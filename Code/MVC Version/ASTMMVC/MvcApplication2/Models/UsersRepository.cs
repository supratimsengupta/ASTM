using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace MvcApplication2.Models
{
    public class UsersRepository :IUsersRepository,IDisposable
    {
        private UserContext userContext = new UserContext("ASTMConnection");
        #region IRoleRepository Members

        public void CreateNewUser(Users user)
        {
            userContext.UserProfiles.Add(user);
            userContext.SaveChanges();
            
        }
        
        public void UpdateUser(Users user)
        {
            foreach (UserRole r in userContext.UserRoles.Where(u => u.UserID == user.UserID).ToList())
              userContext.UserRoles.Remove(r);
            
            
            foreach (UserRole userRole in user.UserRoles)
                userContext.UserRoles.Add(userRole);
            userContext.Entry(user).State = EntityState.Modified;
            userContext.SaveChanges();
        }

        public void DeleteUser(int id)
        {
            Users user = userContext.UserProfiles.Find(id);
            user.UserRoles = userContext.UserRoles.Where(u => u.UserID == user.UserID).ToList();
            userContext.UserProfiles.Remove(user);
            userContext.SaveChanges();

        }

        public Users GetUserByID(int id)
        {
            Users user = userContext.UserProfiles.Find(id);
            user.UserRoles = userContext.UserRoles.Where(u => u.UserID == user.UserID).ToList();
            return (user);
        }
        public Users GetUserByName(string UserName)
        {
            Users user = userContext.UserProfiles.FirstOrDefault(x=>x.UserName==UserName);
            user.UserRoles = userContext.UserRoles.Where(u => u.UserID == user.UserID).ToList();
            return (user);
        }
        
        public IEnumerable<Users> GetAllUsers()
        {
            return (userContext.UserProfiles.ToList());
        }

        public int SaveChanges()
        {
            return (userContext.SaveChanges());
        }
        public Users GetUserByLoginModel(AccountModel.LoginModel Login)
        {
            return(userContext.UserProfiles.FirstOrDefault(u=>(u.UserName==Login.UserName && u.Password==Login.Password)));
        }
        
        #endregion

        #region IDisposable Members

        public void Dispose()
        {
            if (userContext != null)
                userContext.Dispose();
            userContext = null;
        }

        #endregion
    }
}