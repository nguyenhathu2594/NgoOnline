﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NgoOnline
{
    public partial class Adminstrator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Controls.Add(LoadControl("/Admin/adminControl.ascx"));
        }
    }
}