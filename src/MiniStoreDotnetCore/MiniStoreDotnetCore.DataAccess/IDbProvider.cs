using System;
using System.Collections.Generic;
using System.Text;

namespace MiniStoreDotnetCore.DataAccess
{
    public interface IDbProvider
    {
        public enum DataAccessProvidersDbmsVendor {SQLSERERVER=1,ORACLE=1,MYSQL=2,POSSGRESS=3};

        public void IDbProvider(DataAccessProvidersDbmsVendor dbmnsVendor); 
    }
}
