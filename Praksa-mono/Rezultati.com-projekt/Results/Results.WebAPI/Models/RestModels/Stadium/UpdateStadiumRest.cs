using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Results.WebAPI.Models.RestModels.Stadium
{
    public class UpdateStadiumRest
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string StadiumAddress { get; set; }
        public int Capacity { get; set; }
        public string Description { get; set; }
        public Guid ByUser { get; set; }
    }
}