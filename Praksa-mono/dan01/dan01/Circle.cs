﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dan01
{
	class Circle : Shape
	{

		public double Radius { get; set; }

		public Circle(double radius)
		{
			Name = "Circle";
			Radius = radius;
		}
		public override double Area()
		{
			return Math.PI * (Math.Pow(Radius, 2.0));
		}


		public override void Info()
		{
			base.Info();
			Console.WriteLine($"It has a Radius of {Radius}");
		}
	}
}
