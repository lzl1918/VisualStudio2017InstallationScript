using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComparePackages
{
    [DebuggerDisplay("{Name}, {Ignored}")]
    public sealed class Package
    {
        public string Name { get; set; }
        public bool Ignored { get; set; }

        public Package() { }
        public Package(string name, bool ignored)
        {
            Name = name;
            Ignored = ignored;
        }

        public override bool Equals(object obj)
        {
            if (obj == null) return false;
            if (obj is Package objPackage)
            {
                return Name == objPackage.Name && Ignored == objPackage.Ignored;
            }
            else
                return false;
        }
        public override int GetHashCode()
        {
            return Name.GetHashCode() ^ Ignored.GetHashCode();
        }
    }

    public sealed class PackageComparer : IComparer<Package>
    {
        public int Compare(Package x, Package y)
        {
            return x.Name.CompareTo(y.Name);
        }
    }
}
