using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComparePackages
{
    [DebuggerDisplay("{Name}")]
    public sealed class Component
    {
        public string Name { get; set; }
        public SortedSet<Package> RequiredPackages { get; set; }
        public SortedSet<Package> RecommendedPackages { get; set; }
        public SortedSet<Package> OptionalPackages { get; set; }

        public Component(string name)
        {
            IComparer<Package> comparer = new PackageComparer();
            Name = name;
            RequiredPackages = new SortedSet<Package>(comparer);
            RecommendedPackages = new SortedSet<Package>(comparer);
            OptionalPackages = new SortedSet<Package>(comparer);
        }

        public static List<Component> ParseComponents(string filePath)
        {
            Stream fileStream = File.OpenRead(filePath);
            StreamReader reader = new StreamReader(fileStream);
            string line;
            Component component = null;
            bool isRequired = false;
            bool isRecommended = false;
            bool isOptional = false;
            bool isIgnored = false;
            bool isComment = false;
            List<Component> components = new List<Component>();
            while ((line = reader.ReadLine()) != null)
            {
                if (line.Length <= 0) continue;

                if (line[0] == '<')
                {
                    isComment = true;
                }
                else if (line[0] == '#' && line[1] == '>')
                {
                    isComment = false;
                }
                else if (line[0] == '#')
                {
                    if (component != null)
                        components.Add(component);
                    component = new Component(line.Substring(1).Trim());
                    isRequired = false;
                    isRecommended = false;
                    isOptional = false;
                }
                else if (line[0] == '\t' && line[1] == '#')
                {
                    line = line.Substring(2).Trim();
                    if (line == "Required")
                    {
                        isRequired = true;
                    }
                    else if (line == "Recommende")
                    {
                        isRecommended = true;
                    }
                    else if (line == "Optional")
                    {
                        isOptional = true;
                    }
                }
                else
                {
                    line = line.Trim();
                    if (line[0] == '#')
                    {
                        isIgnored = true;
                        line = line.Substring(1).Trim();
                    }
                    else
                        isIgnored = false || isComment;
                    line = line.Substring(1);
                    if (line[line.Length - 1] == ',')
                        line = line.Substring(0, line.Length - 2);
                    else
                        line = line.Substring(0, line.Length - 1);
                    if (isRequired)
                        component.RequiredPackages.Add(new Package(line, isIgnored));
                    else if (isRecommended)
                        component.RecommendedPackages.Add(new Package(line, isIgnored));
                    else if (isOptional)
                        component.OptionalPackages.Add(new Package(line, isIgnored));
                }
            }
            if (component != null)
                components.Add(component);
            reader.Close();
            reader.Dispose();
            fileStream.Close();
            fileStream.Dispose();
            return components;
        }
    }
}
