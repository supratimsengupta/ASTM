using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApplication2.Models
{
   public interface  IUsersRepository
    {
        void CreateNewUser(Users user);
        void UpdateUser(Users user);
        void DeleteUser(int id);
        Users GetUserByID(int id);
        IEnumerable<Users> GetAllUsers();
        int SaveChanges();
        Users GetUserByLoginModel(AccountModel.LoginModel Login);
        Users GetUserByName(string UserName);
    }
}