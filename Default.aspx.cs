/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace registertowers
{
    public partial class _Default : Page
    {
        string connectionString = @"Server=.\sqlexpress; Database=Towers;Trusted_Connection=True;";
      
        protected void Page_Load(object sender, EventArgs e)
        {
            TBAliasTower.Enabled = true;
            TBLatitudePositionTower.Enabled = true;
            TBLongitudePositionTower.Enabled = true;
            TBHeightTower.Enabled = true;
            TBHeightUnitTower.Enabled = true;
            TBGaugeTower.Enabled = true;
            TBGaugeUnitTower.Enabled = true;
            TBTypeTower.Enabled = true;
            TBStateTower.Enabled = true;
            TBRegistrationDateTower.Enabled = true;
            TBStatusTower.Enabled = true;
        }

        protected void BTSave_Click(object sender, EventArgs e)
        {
          
                String Sql = "INSERT INTO Towers " +
                    "(AliasTower,LatitudePositionTower,"+
                    "LongitudePositionTower,HeightTower," +
                    "HeightUnitTower,"+
                    "GaugeTower," +
                    "GaugeUnitTower," +
                    "TypeTower," +
                    "StateTower," +
                    "RegistrationDateTower," +
                    "StatusTower) " +
                    
                    "VALUES " +
                    "('" + TBAliasTower.Text + "',"+
                    "'" + TBLatitudePositionTower.Text + "',"+
                    "'" + TBLongitudePositionTower.Text + "',"+
                    "'" + TBHeightTower.Text + "',"+
                    "'" + TBHeightUnitTower.Text + "',"+
                    "'" + TBGaugeTower.Text + "',"+
                    "'" + TBGaugeUnitTower.Text + "',"+
                    "'" + TBTypeTower.Text + "',"+
                    "'" + TBStateTower.Text + "',"+
                    "'" + TBRegistrationDateTower.Text + "',"+
                    "'" + TBStatusTower.Text +"')";

            
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            try
            {
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                    LBPosts.Text = "Registration successful!";
            }
            catch (Exception ex)
            {
               LBPosts.Text = "Erro: " + ex.ToString();
            }
            finally
            {
                con.Close();
            }
          

        }

        protected void BTClean_Click(object sender, EventArgs e)
        {
            TBAliasTower.Text = "";
            TBLatitudePositionTower.Text = "";
            TBLongitudePositionTower.Text = "";
            TBHeightTower.Text = "";
            TBHeightUnitTower.Text = "";
            TBGaugeTower.Text = "";
            TBGaugeUnitTower.Text = "";
            TBTypeTower.Text = "";
            TBStateTower.Text = "";
            TBRegistrationDateTower.Text = "";
            TBStatusTower.Text = "";
        }
    }
}