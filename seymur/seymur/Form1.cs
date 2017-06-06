using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace seymur
{
    public partial class Form1 : Form
    {
       SqlConnection conn;
        SqlCommand cmd;
        public Form1()
        {
            InitializeComponent();
          

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'test_seymurDataSet.Person' table. You can move, or remove it, as needed.
            this.personTableAdapter.Fill(this.test_seymurDataSet.Person);
            dataGridView1.Refresh();
        }

        private void btn_insert_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=DESKTOP-8A78K7N\SQL2016;Initial Catalog=test_seymur;Integrated Security=True");
            conn.Open();
            if (conn.State==ConnectionState.Open)
            {  
                string query = "insert into Person (name,surname,age) values('" + textBox1.Text + "','" + textBox2.Text + "','" + textBox3.Text + "')";
                cmd = new SqlCommand(query, conn);
                cmd.ExecuteNonQueryAsync();
              
                Form1_Load(this, null);



            }
        }
    }
}
