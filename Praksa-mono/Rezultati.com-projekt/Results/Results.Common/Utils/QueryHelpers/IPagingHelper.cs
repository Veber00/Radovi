using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Results.Common.Utils.QueryHelpers
{
    public interface IPagingHelper
    {
        string ApplayPaging(int pageNumber, int pageSize);
    }
}
