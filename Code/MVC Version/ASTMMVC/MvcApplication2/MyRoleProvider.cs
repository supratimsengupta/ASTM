using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using MvcApplication2.Models;
namespace MvcApplication2
{
    public class MyRoleProvider:RoleProvider
    {
        
        public override string[] GetRolesForUser(string username)
        {
            using (UsersRepository objContext = new UsersRepository())
            {
                var objUser = objContext.GetUserByName(username);
                if (objUser == null)
                {
                    return null;
                }
                else
                {
                    var roles = objUser.UserRoles.Select(x => x.RoleID).ToList();
                    using (RoleRepository objRole = new RoleRepository())
                    {
                      return(from e  in objRole.GetAllRoles() where roles.Contains(e.RoleID) select e.RoleName).ToArray();
                    }
                    
                }
            }
        }



        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override string ApplicationName
        {
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public override void CreateRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            throw new NotImplementedException();
        }

        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
        {
            throw new NotImplementedException();
        }

        public override string[] GetAllRoles()
        {
            throw new NotImplementedException();
        }

        public override string[] GetUsersInRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool IsUserInRole(string username, string roleName)
        {
            throw new NotImplementedException();
        }

        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override bool RoleExists(string roleName)
        {
            throw new NotImplementedException();
        }
    }
}
 