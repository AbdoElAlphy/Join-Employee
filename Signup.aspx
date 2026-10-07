<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="JoinEmp.JobApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Job Application - CPC</title>
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700&display=swap" rel="stylesheet" />
    <link href="Content/JobApplication.css" rel="stylesheet" type="text/css" />
</head>
<body class="job-app-body">
    <form id="form1" runat="server" enctype="multipart/form-data">

        <h1 class="job-app-title">Job <span>Application</span> Form</h1>

        <div class="form-card">

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList"
                CssClass="validation-summary" HeaderText="Please fix the following before submitting:" />

            <%-- ============ Personal Information ============ --%>
            <div class="form-section">
                <p class="section-title">Personal Information</p>
                <div class="form-grid">
                    
                    <div class="field-group">
                        <asp:Label ID="Fs_name" runat="server" CssClass="field-label" AssociatedControlID="Nam_Box1" ForeColor="White">First Name<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:TextBox ID="Nam_Box1" runat="server" CssClass="field-input" placeholder="First name" oninput="this.value = this.value.replace(/[^a-zA-Z\s]/g, '')" OnTextChanged="Nam_Box1_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="Nam_Box1"
                            CssClass="field-error" ErrorMessage="First name is required." Display="Dynamic" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Sc_nam" runat="server" CssClass="field-label" AssociatedControlID="Nam_Box2" ForeColor="White">Second Name<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:TextBox ID="Nam_Box2" runat="server" CssClass="field-input" placeholder="Second name" oninput="this.value = this.value.replace(/[^a-zA-Z\s]/g, '')"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSecondName" runat="server" ControlToValidate="Nam_Box2"
                            CssClass="field-error" ErrorMessage="Second name is required." Display="Dynamic" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Thr_nam" runat="server" CssClass="field-label" AssociatedControlID="Nam_Box3" ForeColor="White">Third Name<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:TextBox ID="Nam_Box3" runat="server" CssClass="field-input" placeholder="Third name" oninput="this.value = this.value.replace(/[^a-zA-Z\s]/g, '')"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvThirdName" runat="server" ControlToValidate="Nam_Box3"
                            CssClass="field-error" ErrorMessage="Third name is required." Display="Dynamic" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Gender" runat="server" CssClass="field-label" AssociatedControlID="ddlGender" Text="Gender" ForeColor="White"></asp:Label>
                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="field-select"
                            OnSelectedIndexChanged="ddlGender_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ddlGender"
                            CssClass="field-error" ErrorMessage="Please choose a gender." Display="Dynamic" InitialValue="" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Birthdate" runat="server" CssClass="field-label" AssociatedControlID="txtBirthDate" Text="Birthdate" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="txtBirthDate" runat="server" CssClass="field-input" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvBirthDate" runat="server" ControlToValidate="txtBirthDate"
                            CssClass="field-error" ErrorMessage="Birthdate is required." Display="Dynamic" ForeColor="Red" />
                        <asp:CustomValidator ID="cvMinAge" runat="server" ControlToValidate="txtBirthDate"
                            CssClass="field-error" ErrorMessage="Applicant must be at least 18 years old."
                            OnServerValidate="cvMinAge_ServerValidate" Display="Dynamic" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Nationality" runat="server" CssClass="field-label" AssociatedControlID="ddlNationality" Text="Nationality" ForeColor="White"></asp:Label>
                        <asp:DropDownList ID="ddlNationality" runat="server" CssClass="field-select"
                            OnSelectedIndexChanged="ddlNationality_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvNationality" runat="server" ControlToValidate="ddlNationality"
                            CssClass="field-error" ErrorMessage="Please choose a nationality." Display="Dynamic" InitialValue="" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Birth_place" runat="server" CssClass="field-label" AssociatedControlID="ddlBirthPlace" Text="Place of Birth" ForeColor="White"></asp:Label>
                        <asp:DropDownList ID="ddlBirthPlace" runat="server" CssClass="field-select"
                            OnSelectedIndexChanged="ddlBirthPlace_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvBirthPlace" runat="server" ControlToValidate="ddlBirthPlace"
                            CssClass="field-error" ErrorMessage="Please choose a place of birth." Display="Dynamic" InitialValue="" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Marital_Status" runat="server" CssClass="field-label" AssociatedControlID="ddlStatus" Text="Marital Status" ForeColor="White"></asp:Label>
                        <asp:DropDownList ID="ddlStatus" runat="server" CssClass="field-select"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvStatus" runat="server" ControlToValidate="ddlStatus"
                            CssClass="field-error" ErrorMessage="Please choose a marital status." Display="Dynamic" InitialValue="" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Religion" runat="server" CssClass="field-label" AssociatedControlID="ddlReligion" Text="Religion" ForeColor="White"></asp:Label>
                        <asp:DropDownList ID="ddlReligion" runat="server" CssClass="field-select"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvReligion" runat="server" ControlToValidate="ddlReligion"
                            CssClass="field-error" ErrorMessage="Please choose a religion." Display="Dynamic" InitialValue="" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Label2" runat="server" CssClass="field-label" AssociatedControlID="ID_Box" ForeColor="White">National ID<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:TextBox ID="ID_Box" runat="server" CssClass="field-input"  placeholder="National ID number" MaxLength="14" oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0, 14)"  AutoPostBack="True" OnTextChanged="ID_Box_TextChanged2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvIdNumber" runat="server" ControlToValidate="ID_Box"
                            CssClass="field-error" ErrorMessage="ID number is required." Display="Dynamic" ForeColor="Red" />
                         <asp:RegularExpressionValidator ID="revIdNumber" runat="server" ControlToValidate="ID_Box" CssClass="field-error"  ErrorMessage="ID number must be 14 digits." Display="Dynamic" ValidationExpression="^[0-9]{14}$"  ForeColor="Red" />
                       
                    </div>

                </div>
            </div>

            <%-- ============ Contact Information ============ --%>
            <div class="form-section">
                <p class="section-title">Contact Information</p>
                <div class="form-grid">

                    <div class="field-group">
                       <asp:Label ID="Ph_Num" runat="server" CssClass="field-label" AssociatedControlID="Phone_Box" ForeColor="White">Phone Number<span style="color: red; font-size: medium;" > * </span></asp:Label>

<asp:TextBox ID="Phone_Box" runat="server" CssClass="field-input" placeholder="e.g. 01012345678"  MaxLength="11" oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0, 11)"  TextMode="Phone" ValidateRequestMode="Disabled"></asp:TextBox>

<asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="Phone_Box" CssClass="field-error" ErrorMessage="Phone number is required." Display="Dynamic" ForeColor="Red" />

<asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="Phone_Box" CssClass="field-error" ErrorMessage="Phone number must be 11 digits." Display="Dynamic" ValidationExpression="^[0-9]{11}$" ForeColor="Red" />
    </div>

                    <div class="field-group">
                        <asp:Label ID="EmailLabel" runat="server" CssClass="field-label" AssociatedControlID="Email_Box" ForeColor="White">Email Address<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:TextBox ID="Email_Box" runat="server" CssClass="field-input" TextMode="Email" placeholder="name@example.com"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="Email_Box"
                            CssClass="field-error" ErrorMessage="Email address is required." Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="Email_Box"
                            CssClass="field-error" ErrorMessage="Enter a valid email address." Display="Dynamic"
                            ValidationExpression="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Address" runat="server" CssClass="field-label" AssociatedControlID="Address_Box" ForeColor="White">Address<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:TextBox ID="Address_Box" runat="server" CssClass="field-input" placeholder="Street, building, city"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="Address_Box"
                            CssClass="field-error" ErrorMessage="Address is required." Display="Dynamic" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Label3" runat="server" CssClass="field-label" AssociatedControlID="ddlResidentcountry" ForeColor="White">Resident Country<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:DropDownList ID="ddlResidentcountry" runat="server" CssClass="field-select"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvResidentCountry" runat="server" ControlToValidate="ddlResidentcountry"
                            CssClass="field-error" ErrorMessage="Please choose a resident country." Display="Dynamic" InitialValue="" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="Label4" runat="server" CssClass="field-label" AssociatedControlID="Residence_Box" ForeColor="White">Current Residence<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:TextBox ID="Residence_Box" runat="server" CssClass="field-input" placeholder="City / area"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvResidence" runat="server" ControlToValidate="Residence_Box"
                            CssClass="field-error" ErrorMessage="Current residence is required." Display="Dynamic" ForeColor="Red" />
                    </div>

                </div>
            </div>

            <%-- ============ Professional Information ============ --%>
            <div class="form-section">
                <p class="section-title">Professional Information</p>
                <div class="form-grid">

                    <div class="field-group">
                        <asp:Label ID="Title" runat="server" CssClass="field-label" AssociatedControlID="ddlTitle" ForeColor="White">Job Title<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:DropDownList ID="ddlTitle" runat="server" CssClass="field-select"
                            OnSelectedIndexChanged="ddlTitle_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ControlToValidate="ddlTitle"
                            CssClass="field-error" ErrorMessage="Please choose a job title." Display="Dynamic" InitialValue="" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="QualificationLabel" runat="server" CssClass="field-label" AssociatedControlID="ddlQualification" ForeColor="White">Qualification<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:DropDownList ID="ddlQualification" runat="server" CssClass="field-select"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvQualification" runat="server" ControlToValidate="ddlQualification"
                            CssClass="field-error" ErrorMessage="Please choose a qualification." Display="Dynamic" InitialValue="" ForeColor="Red" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="ExperienceLabel" runat="server" CssClass="field-label" AssociatedControlID="Experience_Box" ForeColor="White">Years of Experience<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:TextBox ID="Experience_Box" runat="server" CssClass="field-input" TextMode="Number" placeholder="0"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvExperience" runat="server" ControlToValidate="Experience_Box"
                            CssClass="field-error" ErrorMessage="Years of experience is required." Display="Dynamic" ForeColor="Red" />
                        <asp:RangeValidator ID="rvExperience" runat="server" ControlToValidate="Experience_Box"
                            CssClass="field-error" ErrorMessage="Enter a number between 0 and 60." Display="Dynamic"
                            Type="Integer" MinimumValue="0" MaximumValue="60" ForeColor="White" />
                    </div>

                    <div class="field-group">
                        <asp:Label ID="SalaryLabel" runat="server" CssClass="field-label" AssociatedControlID="Salary_Box" Text="Expected Salary (optional)" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="Salary_Box" runat="server" CssClass="field-input" TextMode="Number" placeholder="Leave blank if flexible"></asp:TextBox>
                        <asp:CompareValidator ID="cvSalary" runat="server" ControlToValidate="Salary_Box"
                            CssClass="field-error" ErrorMessage="Expected salary must be a number." Display="Dynamic"
                            Operator="DataTypeCheck" Type="Double" ForeColor="White" />
                    </div>

                </div>
            </div>

            <%-- ============ Documents & Consent ============ --%>
            <div class="form-section">
                <p class="section-title">Documents &amp; Consent</p>
                <div class="form-grid">

                    <div class="field-group full-width">
                        <asp:Label ID="CvLabel" runat="server" CssClass="field-label" AssociatedControlID="cvUpload" ForeColor="White">Upload CV<span style="color: red; font-size: medium;" > * </span></asp:Label>
                        <asp:FileUpload ID="cvUpload" runat="server" CssClass="field-file" />
                        <span class="field-hint">PDF or Word, up to 5&nbsp;MB.</span>
                        <asp:RequiredFieldValidator ID="rfvCv" runat="server" ControlToValidate="cvUpload"
                            CssClass="field-error" ErrorMessage="Please attach your CV." Display="Dynamic" ForeColor="White" />
                    </div>

                </div>

                <div class="terms-row">
                    <asp:CheckBox ID="chkTerms" runat="server" ForeColor="White" />
                    <label for="chkTerms">I confirm the information above is accurate and I agree to the terms and conditions.</label>
                </div>
                <asp:CustomValidator ID="cvTerms" runat="server" CssClass="field-error"
                    ErrorMessage="You must agree to the terms and conditions before submitting." Display="Dynamic"
                    OnServerValidate="cvTerms_ServerValidate" ForeColor="White" />
            </div>

            <div class="form-actions">
                <asp:Button ID="submit" runat="server" CssClass="btn-submit" OnClick="Button1_Click" Text="Submit Application" />
            </div>

            <div class="result-panel">
                <asp:Label ID="Name1" runat="server" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Name2" runat="server" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Name3" runat="server" ForeColor="White"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
