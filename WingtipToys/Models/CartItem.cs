﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WingtipToys.Models
{
    public class CartItem
    {
        [System.ComponentModel.DataAnnotations.Key]
        public string ItemId { get; set; }

        public string CartId { get; set; }

        public int Quantity { get; set; }

        public System.DateTime DateCreated { get; set; }

        public int ProductID { get; set; }

        public virtual Product Product { get; set; }
    }
}