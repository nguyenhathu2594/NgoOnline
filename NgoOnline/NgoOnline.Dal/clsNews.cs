using NgoOnline.App_Code;
using System.Data;
using System.Data.SqlClient;

namespace NgoOnline.Dal
{
    public class clsNews
    {
        public DataTable GetData()
        {
            
            SqlCommand sqlCom = new SqlCommand("select * from News_Category");
            sqlCom.CommandType = CommandType.Text;
            return clsDT.GetData(sqlCom);
        }
    }
}
