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

namespace FilmArsivim
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=FilmArsivim;Integrated Security=True");
        void Filmler()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select AD,KATEGORI,LINK from TBLFILMLER", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgvFilmListesi.DataSource = dt;
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            Filmler();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string filmAd, filmLink, filmKategori;
            filmAd = txtFilmAd.Text;
            filmKategori = txtKategori.Text;
            filmLink = txtLink.Text;
            SqlCommand cmd = new SqlCommand("insert into TBLFILMLER (AD,KATEGORI,LINK) values(@p1,@p2,@p3)",con);
            cmd.Parameters.AddWithValue("@p1", filmAd);
            cmd.Parameters.AddWithValue("@p2", filmKategori);
            cmd.Parameters.AddWithValue("@p3", filmLink);
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Film Listenize Eklendi","Bilgi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            Filmler();
            txtFilmAd.Clear();
            txtKategori.Clear();
            txtLink.Clear();
        }

        private void dgvFilmListesi_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            int secilen = dgvFilmListesi.SelectedRows[0].Index;
            string link = dgvFilmListesi.Rows[secilen].Cells[2].Value.ToString();
            webBrowser1.Navigate(link);
        }

        private void btnHakkimizda_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Bu proje Canberk Şahin tarafından 31.03.2020'de kodlandı(Karantina günleri)","Hakkımızda",MessageBoxButtons.OK,MessageBoxIcon.Hand);
        }

        private void btnCikis_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnRenkDegistir_Click(object sender, EventArgs e)
        {
            Color[] renkler = { Color.Pink, Color.Red, Color.Aqua, Color.BlueViolet, Color.DarkSalmon, Color.DarkOrange, Color.LightCoral };
            Random rand = new Random();
            int sayi = rand.Next(0, 7);
            this.BackColor = renkler[sayi];
        }

        private void btnTamEkran_Click(object sender, EventArgs e)
        {
            TamEkran frm = new TamEkran(dgvFilmListesi.SelectedRows[0].Cells[2].Value.ToString());
            frm.Show();
            webBrowser1.Navigate("https://www.youtube.com");
        }
    }
}
