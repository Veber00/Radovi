using AutoMapper;
using Results.Model.Common;
using Results.WebAPI.Models.RestModels.Person;
using Results.WebAPI.Models.ViewModels.Person;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Results.WebAPI.AutoMapper
{
    public class CoachProfile : Profile
    {
        public CoachProfile()
        {
            CreateMap<CoachRest, ICoach>();
            CreateMap<ICoach, CoachViewModel>();
        }
    }
}