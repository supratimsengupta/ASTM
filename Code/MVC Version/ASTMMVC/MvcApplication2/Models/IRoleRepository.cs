using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApplication2.Models
{
    public interface IRoleRepository
    {
        void CreateNewRole(Role role);
        void UpdateRole(Role role);
        void DeleteRole(int id);
        Role GetRoleByID(int id);
        IEnumerable<Role> GetAllRoles();
        int SaveChanges();
    }
}