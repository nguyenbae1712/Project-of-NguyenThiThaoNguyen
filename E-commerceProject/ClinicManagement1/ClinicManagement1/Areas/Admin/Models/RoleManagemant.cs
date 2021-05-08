using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using ClinicManagement1.Models;

namespace ClinicManagement1.Areas.Admin.Models
{
    public class RoleManagemant : RoleProvider
    {
        public override string ApplicationName { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
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

        public override string[] GetRolesForUser(string username)
        {
            if (!username.StartsWith("user")) return new string[] { };
            using (ClinicManagementEntities2 db = new ClinicManagementEntities2())
            {
                int eid = int.Parse(username.Substring(4));
                var user = (from e in db.Employees
                            where e.Id == eid
                            select new
                            {
                                e.Role.RoleName
                            }).SingleOrDefault();
                return new string[] { user.RoleName };
            }
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