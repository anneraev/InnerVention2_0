using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InnerVention.Models
{
    public class Advice
    {
        private int _id { get; set; }

        private int _issueId { get; set; }

        private string _content { get; set; }

        private bool _active { get; set; }
    }
}
