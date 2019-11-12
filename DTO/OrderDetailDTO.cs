using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DTO
{
    public class OrderDetailDTO
    {
        int tourid_, booktourid_, quantity_, subtotal_;
        public int TourID { get { return tourid_; } set { tourid_ = value; } }
        public int BookTourID { get { return booktourid_; } set { booktourid_ = value; } }
        public int Quantity { get { return quantity_; } set { quantity_ = value; } }
        public int Subtotal { get { return subtotal_; } set { subtotal_ = value; } }
    }
}
