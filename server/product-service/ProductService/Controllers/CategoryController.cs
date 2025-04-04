using System;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using ProductService.Interfaces;

namespace ProductService.Controllers;

[ApiController]
    [Route("api/categoryList")]
public class CategoryController : ControllerBase
{
private readonly ICategoryRepository _categoryRepository;
        public CategoryController(ICategoryRepository categoryRepository)
        {
            _categoryRepository = categoryRepository;
        }

        [HttpGet]
        public async Task<IActionResult> GetCategoryList()
        {
            var categories = await _categoryRepository.GetAllCategoriesAsync();
            var categoryDtos = categories.Select(c => c.Name).ToList();
            return Ok(categoryDtos);
        }
        
    }

