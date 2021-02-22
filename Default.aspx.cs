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
            TBGaugeTower.Enabled = true;
            TBRegistrationDateTower.Enabled = false;
            string StrToday = string.Empty;

            StrToday = DateTime.Now.Date.ToString("yyyy-MM-dd");

            TBRegistrationDateTower.Text = Convert.ToString(StrToday);
            TBStatusTower.Enabled = true;


           //1o. Cria a conexao com banco e denominado uma varivael de nome = con;
           //Basta somente um conexão.
            SqlConnection con = new SqlConnection(connectionString);
           
            //2º Cria uma variavel string com a instrução SQL que vai buscar no banco as informações.
            
            //PREENCHEDO DROP DONW LIST TYPE TOWER
            string Sql ="SELECT IdentificationTypeTower,DescriptionTypeTower from TypesTower";
            
            //3º Para Dropdoun list é necessário criar um adpatador SQL, no nosso caso chamei esse adptador daTypeTower
            // o adptador precisa conectar com o banco de dados e alem disso passar a instrução a ser executada no banco;
            // no caso a instrução esta na variavel SQL e na string de conexão.
            SqlDataAdapter daTypeTower = new SqlDataAdapter(Sql,con);
           
            //4º Criar um objeto do tipo TABELA DE DADOS para receber o resultado que vem do banco de dados no caso chamei de dtresultado; 
            DataTable dtResultado = new DataTable();
            

            //5º uma boa pratica e limpa a tabela de dados;
            dtResultado.Clear();
            
            //6º uma boa pratica e limpar a drop douwn list;
            DPLTypeTower.DataSource = null;

            //7º Preeencher o adpatador com os dados coletados no banco de dados;
            daTypeTower.Fill(dtResultado);

            //8º Associar a fonte de dados do drop donw list;
            DPLTypeTower.DataSource=dtResultado;
          
            //9º determinar que o texto que vai aparecer na lista e descrição da torre;
            DPLTypeTower.DataTextField = "DescriptionTypeTower";
           
            //10º Determinar que o valor que vai ficar armazenado e o id da tipo da torre;
            DPLTypeTower.DataValueField = "IdentificationTypeTower";
          
            //11º Monta a drop donw list;
            DPLTypeTower.DataBind();


            
            Sql = "SELECT IndentificationGauge,descriptionGauge  from TypesGauge";

            SqlDataAdapter daTypesGauge = new SqlDataAdapter(Sql, con);

            DataTable gtResultado = new DataTable();

                    
            gtResultado.Clear();

            DPLGaugeUnitTower.DataSource = null;

            daTypesGauge.Fill(gtResultado);

            DPLGaugeUnitTower.DataSource = gtResultado;

            DPLGaugeUnitTower.DataTextField = "descriptionGauge";

            DPLGaugeUnitTower.DataValueField = "IndentificationGauge";

            DPLGaugeUnitTower.DataBind();




            Sql = "SELECT SiglaState,NameState from USStates";

            SqlDataAdapter daUSStates = new SqlDataAdapter(Sql, con);

            DataTable stResultado = new DataTable();

            DPLGaugeUnitTower.DataSource = stResultado;

            stResultado.Clear();

            DPLGaugeUnitTower.DataSource = null;

            daUSStates.Fill(stResultado);

            DPLStateTower.DataSource = stResultado;

            DPLStateTower.DataTextField = "NameState";
            DPLStateTower.DataValueField= "SiglaState";

            DPLStateTower.DataBind();


            Sql = "SELECT IdentificationUnity, DescriptionUnity from Unity";

            SqlDataAdapter daUnity = new SqlDataAdapter(Sql, con);

            DataTable utResultado = new DataTable();

            DPLHeightUnitTower.DataSource = utResultado;

            utResultado.Clear();

            DPLHeightUnitTower.DataSource = null;

            daUnity.Fill(utResultado);

            DPLHeightUnitTower.DataSource = utResultado;

            DPLHeightUnitTower.DataTextField = "DescriptionUnity";
            DPLHeightUnitTower.DataValueField = "IdentificationUnity";

            DPLHeightUnitTower.DataBind();

        }

        protected void BTSave_Click(object sender, EventArgs e)
        {

            string Sql = "exec InsertTowers " +
               "'" + TBAliasTower.Text + "'" +
               ",'" + TBLatitudePositionTower.Text + "'" +
               ",'" + TBLongitudePositionTower.Text + "'" +
               "," + TBHeightTower.Text +
               "," + DPLHeightUnitTower.SelectedValue + 
               "," + TBGaugeTower.Text  +
               "," + DPLGaugeUnitTower.SelectedValue +
               "," + DPLTypeTower.SelectedValue + 
               ",'" + DPLStateTower.SelectedValue + "'" + 
               ",'" + TBStatusTower.Text +"'";

            
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
            TBGaugeTower.Text = "";
            TBRegistrationDateTower.Text = "";
            TBStatusTower.Text = "";
        }
    }
}