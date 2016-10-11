package com.disid.restful.web.product.html;

import com.disid.restful.datatables.Datatables;
import com.disid.restful.datatables.DatatablesData;
import com.disid.restful.datatables.DatatablesPageable;
import com.disid.restful.model.Product;
import com.disid.restful.service.api.ProductService;

import io.springlets.data.domain.GlobalSearch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.UriComponents;

import javax.validation.Valid;

@Controller
@RequestMapping(value = "/products", produces = MediaType.TEXT_HTML_VALUE)
public class ProductsCollectionThymeleafController {

  public ProductService productService;

  @Autowired
  public ProductsCollectionThymeleafController(ProductService productService) {
    this.productService = productService;
  }

  @InitBinder("product")
  public void initOwnerBinder(WebDataBinder dataBinder) {
    dataBinder.setDisallowedFields("id");
  }

  @GetMapping("/create-form")
  public String createForm(Model model) {
    model.addAttribute(new Product());
    return "products/create";
  }

  @PostMapping
  public String create(@Valid @ModelAttribute Product product, BindingResult result,
      RedirectAttributes redirectAttrs, Model model) {
    if (result.hasErrors()) {
      return "products/create";
    }
    Product newProduct = productService.save(product);
    UriComponents showURI = ProductsItemThymeleafController.showURI(newProduct);
    return "redirect:" + showURI.toUriString();
  }

  @GetMapping
  public String list(Model model) {
    return "products/list";
  }

  public static UriComponents listURI() {
    return MvcUriComponentsBuilder
        .fromMethodCall(
            MvcUriComponentsBuilder.on(ProductsCollectionThymeleafController.class).list(null))
        .build().encode();
  }

  @GetMapping(produces = Datatables.MEDIA_TYPE)
  @ResponseBody
  public ResponseEntity<DatatablesData<Product>> list(GlobalSearch search,
      DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
    Page<Product> products = productService.findAll(search, pageable);
    long totalProductsCount = products.getTotalElements();
    if (search != null && StringUtils.hasText(search.getText())) {
      totalProductsCount = productService.count();
    }
    DatatablesData<Product> datatablesData =
        new DatatablesData<Product>(products, totalProductsCount, draw);
    return ResponseEntity.ok(datatablesData);
  }

}