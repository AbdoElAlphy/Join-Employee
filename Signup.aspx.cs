using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JoinEmp
{
    public partial class JobApplication : System.Web.UI.Page
    {
        // Shared list used by Nationality, Resident Country and Place of Birth
        // (previously duplicated three times in this file).
        private static readonly string[] Countries = new string[]
        {
            "إثيوبيا","أذربيجان","أرمينيا","إريتريا","إسبانيا","أستراليا","إستونيا","إسواتيني","أفغانستان","الأرجنتين","الأردن","الإكوادور","الإمارات العربية المتحدة","ألبانيا","البحرين","البرازيل","البرتغال","البوسنة والهرسك","التشيك","الجبل الأسود","الجزائر","الدنمارك","الرأس الأخضر","السعودية","السلفادور","السنغال","السودان","السويد","الصومال","الصين","العراق","الغابون","الفلبين","الكاميرون","الكونغو الديمقراطية","الكونغو برازافيل","الكويت","ألمانيا","المجر","المغرب","المكسيك","المملكة المتحدة","النرويج","النمسا","النيجر","الهند","الولايات المتحدة الأمريكية","اليابان","اليمن","اليونان","أنتيغوا وباربودا","أندورا","إندونيسيا","أنغولا","أوروغواي","أوزبكستان","أوغندا","أوكرانيا","إيران","أيرلندا","آيسلندا","إيطاليا","بابوا غينيا الجديدة","باراغواي","باكستان","بالاو","بربادوس","بروناي","بلجيكا","بلغاريا","بليز","بنغلاديش","بنما","بنين","بوتان","بوتسوانا","بوركينا فاسو","بوروندي","بولندا","بوليفيا","بيرو","بيلاروسيا","تايلاند","تايوان","تركمانستان","تركيا","ترينيداد وتوباغو","تشاد","تشيلي","تنزانيا","توغو","توفالو","تونس","تونغا","تيمور الشرقية","جامايكا","جزر البهاما","جزر القمر","جزر المالديف","جزر سليمان","جزر مارشال","جمهورية أفريقيا الوسطى","جمهورية الدومينيكان","جنوب أفريقيا","جنوب السودان","جورجيا","جيبوتي","دومينيكا","رواندا","روسيا","رومانيا","زامبيا","زيمبابوي","ساحل العاج","ساموا","سان مارينو","سانت فينسنت والغرينادين","سانت كيتس ونيفيس","سانت لوسيا","ساو تومي وبرينسيب","سريلانكا","سلوفاكيا","سلوفينيا","سنغافورة","سوريا","سورينام","سويسرا","سيراليون","سيشل","صربيا","طاجيكستان","عُمان","غامبيا","غانا","غرينادا","غواتيمالا","غيانا","غينيا","غينيا الاستوائية","غينيا بيساو","فانواتو","فرنسا","فلسطين","فنزويلا","فنلندا","فيتنام","فيجي","قبرص","قطر","قيرغيزستان","كازاخستان","كرواتيا","كمبوديا","كندا","كوبا","كوريا الجنوبية","كوريا الشمالية","كوستاريكا","كوسوفو","كولومبيا","كيريباتي","كينيا","لاتفيا","لاوس","لبنان","لوكسمبورغ","ليبيا","ليبيريا","ليتوانيا","ليختنشتاين","ليسوتو","مالاوي","مالطا","مالي","ماليزيا","مدغشقر","مصر","مقدونيا الشمالية","منغوليا","موريتانيا","موريشيوس","موزمبيق","مولدوفا","موناكو","ميانمار","ميكرونيزيا","ناميبيا","ناورو","نيبال","نيجيريا","نيكاراغوا","نيوزيلندا","هايتي","هندوراس","هولندا"
        };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountryDropdown(ddlNationality, "-- Choose Nationality --");
                BindCountryDropdown(ddlResidentcountry, "-- Resident Country --");
                BindCountryDropdown(ddlBirthPlace, "-- Choose Birth Place --");
                BindGender();
                BindTitles();
                BindStatus();
                BindReligion();
                BindQualification();
            }
        }

        private void BindCountryDropdown(DropDownList ddl, string placeholderText)
        {
            ddl.Items.Add(new ListItem(placeholderText, ""));
            foreach (string country in Countries)
            {
                ddl.Items.Add(new ListItem(country, country));
            }
        }

        private void BindGender()
        {
            ddlGender.Items.Add(new ListItem("-- Choose Gender --", ""));
            ddlGender.Items.Add(new ListItem("Male", "Male"));
            ddlGender.Items.Add(new ListItem("Female", "Female"));
            ddlGender.Items.Add(new ListItem("Prefer not to say", "Prefer not to say"));
        }

        private void BindTitles()
        {
            string[] titles = new string[] { "Mr.", "Mrs.", "Ms.", "Dr.", "Eng." };
            ddlTitle.Items.Add(new ListItem("-- Choose Job Title --", ""));
            foreach (string title in titles)
            {
                ddlTitle.Items.Add(new ListItem(title, title));
            }
        }

        private void BindStatus()
        {
            string[] status = new string[] { "Single", "Married", "Divorced", "Widowed" };
            ddlStatus.Items.Add(new ListItem("-- Choose Marital Status --", ""));
            foreach (string s in status)
            {
                ddlStatus.Items.Add(new ListItem(s, s));
            }
        }

        private void BindReligion()
        {
            string[] religions = new string[] { "Islam", "Christianity", "Judaism", "Hinduism", "Buddhism" };
            ddlReligion.Items.Add(new ListItem("-- Choose Religion --", ""));
            foreach (string religion in religions)
            {
                ddlReligion.Items.Add(new ListItem(religion, religion));
            }
        }

        private void BindQualification()
        {
            string[] qualifications = new string[]
            {
                "High School", "Diploma", "Bachelor's Degree", "Master's Degree", "PhD", "Other"
            };
            ddlQualification.Items.Add(new ListItem("-- Choose Qualification --", ""));
            foreach (string q in qualifications)
            {
                ddlQualification.Items.Add(new ListItem(q, q));
            }
        }

        // Minimum age check
        protected void cvMinAge_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime birthDate;

            if (!DateTime.TryParse(txtBirthDate.Text, out birthDate))
            {
                args.IsValid = false;
                return;
            }

            int age = DateTime.Today.Year - birthDate.Year;

            if (birthDate.Date > DateTime.Today.AddYears(-age))
            {
                age--;
            }

            args.IsValid = (age >= 18);
        }

        protected void cvTerms_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerms.Checked;
        }

        protected void ddlNationality_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void ddlBirthPlace_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void ddlTitle_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            string name = Nam_Box1.Text;
            string name2 = Nam_Box2.Text;
            string name3 = Nam_Box3.Text;

            Name1.Text = "First name: " + name;
            Name2.Text = "Second name: " + name2;
            Name3.Text = "Third name: " + name3;
                   
            // Save the uploaded CV
            
            if (cvUpload.HasFile)
            {
                try
                {
                    string uploadsFolder = Server.MapPath("~/App_Data/Uploads");
                    if (!Directory.Exists(uploadsFolder))
                    {
                        Directory.CreateDirectory(uploadsFolder);
                    }

                    string safeFileName = Path.GetFileName(cvUpload.FileName);
                    string uniqueFileName = Guid.NewGuid().ToString("N") + "_" + safeFileName;
                    cvUpload.SaveAs(Path.Combine(uploadsFolder, uniqueFileName));
                }
                catch (Exception)
                {
                    // log the error and show a message to the applicant
                }
            }

          
        }

        protected void ID_Box_TextChanged2(object sender, EventArgs e)
        {
            if (ID_Box.Text.Length > 14)
            {
                ID_Box.Text = ID_Box.Text.Substring(0, 14);
            }
        }

        protected void Nam_Box1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
