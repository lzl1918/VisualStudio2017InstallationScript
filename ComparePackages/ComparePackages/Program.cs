using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComparePackages
{
    class Program
    {
        static void Compare(SortedSet<Package> installed, SortedSet<Package> all, out IEnumerable<string> added, out IEnumerable<string> removed)
        {
            List<string> _added = new List<string>();
            List<string> _removed = new List<string>();
            foreach (Package package in installed)
            {
                Package allPack = all.FirstOrDefault(pack => pack.Name == package.Name);
                if (allPack == null)
                    _removed.Add(package.Name);
                else
                    all.Remove(allPack);
            }
            _added.AddRange(all.Select(pack => pack.Name));
            added = _added;
            removed = _removed;
        }
        static void Main(string[] args)
        {
            if (args.Length != 2)
            {
                Console.WriteLine("arg error");
                return;
            }
            string installedPath = args[0];
            string allPath = args[1];
            List<Component> installedComponents = Component.ParseComponents(installedPath);
            List<Component> allComponents = Component.ParseComponents(allPath);
            List<Component> removedComponents = new List<Component>();
            foreach (Component installed in installedComponents)
            {
                Component all = allComponents.FirstOrDefault(c => c.Name == installed.Name);
                if (all == null)
                {
                    removedComponents.Add(installed);
                }
                else
                {
                    IEnumerable<string> added;
                    IEnumerable<string> removed;
                    bool isSame = true;
                    Console.WriteLine(installed.Name);
                    Compare(installed.RequiredPackages, all.RequiredPackages, out added, out removed);
                    if (added.Count() + removed.Count() > 0)
                    {
                        Console.WriteLine("\tRequired");
                        if (added.Count() > 0)
                        {
                            Console.WriteLine("\t\tAdded");
                            foreach (string pack in added)
                                Console.WriteLine("\t\t\t{0}", pack);
                        }
                        if (removed.Count() > 0)
                        {
                            Console.WriteLine("\t\tRemoved");
                            foreach (string pack in added)
                                Console.WriteLine("\t\t\t{0}", pack);
                        }
                        isSame = false;
                    }
                    Compare(installed.RecommendedPackages, all.RecommendedPackages, out added, out removed);
                    if (added.Count() + removed.Count() > 0)
                    {
                        Console.WriteLine("\tRecommended");
                        if (added.Count() > 0)
                        {
                            Console.WriteLine("\t\tAdded");
                            foreach (string pack in added)
                                Console.WriteLine("\t\t\t{0}", pack);
                        }
                        if (removed.Count() > 0)
                        {
                            Console.WriteLine("\t\tRemoved");
                            foreach (string pack in added)
                                Console.WriteLine("\t\t\t{0}", pack);
                        }
                        isSame = false;
                    }
                    Compare(installed.OptionalPackages, all.OptionalPackages, out added, out removed);
                    if (added.Count() + removed.Count() > 0)
                    {
                        Console.WriteLine("\tOptional");
                        if (added.Count() > 0)
                        {
                            Console.WriteLine("\t\tAdded");
                            foreach (string pack in added)
                                Console.WriteLine("\t\t\t{0}", pack);
                        }
                        if (removed.Count() > 0)
                        {
                            Console.WriteLine("\t\tRemoved");
                            foreach (string pack in added)
                                Console.WriteLine("\t\t\t{0}", pack);
                        }
                        isSame = false;
                    }
                    if (isSame)
                        Console.WriteLine("\tsame");
                    allComponents.Remove(all);
                }

            }
            if (removedComponents.Count + allComponents.Count > 0)
            {
                Console.WriteLine();
                if (removedComponents.Count > 0)
                    Console.WriteLine("Removed Components");
                foreach (Component component in removedComponents)
                {
                    Console.WriteLine("\t{0}", component.Name);
                }

                if (allComponents.Count > 0)
                    Console.WriteLine("Added Components");
                foreach (Component component in allComponents)
                {
                    Console.WriteLine("\t{0}", component.Name);
                }

            }

            return;
        }
    }
}
