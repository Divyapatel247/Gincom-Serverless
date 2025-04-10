using System;
using ProductService.Model;

namespace ProductService.DTOs;

public class UpdateProductDTO
{
        public string Title { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public decimal Price { get; set; }
        public int Stock { get; set; }
        public string CategoryName { get; set; } = string.Empty;

        public List<Product> RelatedProducts { get; set; } = new List<Product>();
}
