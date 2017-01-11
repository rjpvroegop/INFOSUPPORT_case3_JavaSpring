package com.infosupport;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.infosupport.domain.Category;
import com.infosupport.domain.Product;
import com.infosupport.domain.Supplier;
import com.infosupport.repository.CategoryRepository;
import com.infosupport.repository.ProductRepository;
import com.infosupport.repository.SupplierRepository;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@SpringBootApplication
@EnableDiscoveryClient
public class BscatalogusbeheerApplication {

    public static void main(String[] args) {
        SpringApplication.run(BscatalogusbeheerApplication.class, args);
    }

    @Bean
    CommandLineRunner onStartup(ProductRepository productRepository, CategoryRepository categoryRepository, SupplierRepository supplierRepository) {
        return (String... args) -> {

            ObjectMapper mapper = new ObjectMapper();

            JSONArray categories = new JSONArray("[{'id':1,'name':'Bikes'},{'id':2,'name':'Components'},{'id':3,'name':'Clothing'},{'id':4,'name':'Accessories'},{'id':5,'name':'Mountain Bikes'},{'id':6,'name':'Road Bikes'},{'id':7,'name':'Touring Bikes'},{'id':8,'name':'Handlebars'},{'id':9,'name':'Bottom Brackets'},{'id':10,'name':'Brakes'},{'id':11,'name':'Chains'},{'id':12,'name':'Cranksets'},{'id':13,'name':'Derailleurs'},{'id':14,'name':'Forks'},{'id':15,'name':'Headsets'},{'id':16,'name':'Mountain Frames'},{'id':17,'name':'Pedals'},{'id':18,'name':'Road Frames'},{'id':19,'name':'Saddles'},{'id':20,'name':'Touring Frames'},{'id':21,'name':'Wheels'},{'id':22,'name':'Bib-Shorts'},{'id':23,'name':'Caps'},{'id':24,'name':'Gloves'},{'id':25,'name':'Jerseys'},{'id':26,'name':'Shorts'},{'id':27,'name':'Socks'},{'id':28,'name':'Tights'},{'id':29,'name':'Vests'},{'id':30,'name':'Bike Racks'},{'id':31,'name':'Bike Stands'},{'id':32,'name':'Bottles and Cages'},{'id':33,'name':'Cleaners'},{'id':34,'name':'Fenders'},{'id':35,'name':'Helmets'},{'id':36,'name':'Hydration Packs'},{'id':37,'name':'Lights'},{'id':38,'name':'Locks'},{'id':39,'name':'Panniers'},{'id':40,'name':'Pumps'},{'id':41,'name':'Tires and Tubes'}]");
            for (int i = 0; i < categories.length(); i++) {
                categoryRepository.save(mapper.readValue(categories.get(i).toString(), Category.class));
            }
            System.out.println("All Categories added");

            JSONArray suppliers = new JSONArray("[{'id':1,'name':'Gazelle'},{'id':2,'name':'Batavus'},{'id':3,'name':'AXA'},{'id':4,'name':'Shimano'},{'id':5,'name':'Union'},{'id':6,'name':'Bikkel'},{'id':7,'name':'Raleigh'},{'id':8,'name':'Koga Miyata'},{'id':9,'name':'Eddy Merckx'},{'id':10,'name':'Giant'}]");
            for (int i = 0; i < suppliers.length(); i++) {
                supplierRepository.save(mapper.readValue(suppliers.get(i).toString(), Supplier.class));
            }
            System.out.println("All suppliers added");

            List<Category> categories1 = new ArrayList<>();
            categories1.add(categoryRepository.findOne(1L));
            categories1.add(categoryRepository.findOne(6L));

            List<Category> categories2 = new ArrayList<>();
            categories2.add(categoryRepository.findOne(2L));
            categories2.add(categoryRepository.findOne(17L));

            List<Category> categories3 = new ArrayList<>();
            categories3.add(categoryRepository.findOne(3L));
            categories3.add(categoryRepository.findOne(29L));

            List<Category> categories4 = new ArrayList<>();
            categories4.add(categoryRepository.findOne(4L));
            categories4.add(categoryRepository.findOne(38L));

            List<Category> categories5 = new ArrayList<>();
            categories5.add(categoryRepository.findOne(1L));
            categories5.add(categoryRepository.findOne(7L));

            productRepository.save(Product.builder()
                    .name("Heren fiets")
                    .description("Een stevige heren fiets")
                    .supplier(supplierRepository.findOne(1L))
                    .categoryList(categories1)
                    .availableFrom(LocalDate.now().minusDays(1))
                    .availableUntil(LocalDate.now().plusDays(5))
                    .image("data:image/gif;base64,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")
                    .build());

            productRepository.save(Product.builder()
                    .name("Dames fiets")
                    .description("Een dames fiets met lage instap")
                    .supplier(supplierRepository.findOne(1L))
                    .categoryList(categories5)
                    .availableFrom(LocalDate.now().minusDays(1))
                    .availableUntil(LocalDate.now().plusDays(5))
                    .image("data:image/gif;base64,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")
                    .build());

            productRepository.save(Product.builder()
                    .name("Trapper")
                    .description("Een trapper is een belangrijk onderdeel van de fiets, dit onderdeel moet stevig zijn.")
                    .supplier(supplierRepository.findOne(3L))
                    .categoryList(categories2)
                    .availableFrom(LocalDate.now().minusDays(1))
                    .availableUntil(LocalDate.now().plusDays(5))
                    .image("data:image/gif;base64,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")
                    .build());

            productRepository.save(Product.builder()
                    .name("Windjack")
                    .description("handig als het hard waait")
                    .supplier(supplierRepository.findOne(8L))
                    .categoryList(categories3)
                    .availableFrom(LocalDate.now().minusDays(5))
                    .availableUntil(LocalDate.now().minusDays(1))
                    .image("data:image/gif;base64,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")
                    .build());

            productRepository.save(Product.builder()
                    .name("veiligheidsslot")
                    .description("een goed veiliheidsslot voorkomt dat je fiets gestolen wordt")
                    .supplier(supplierRepository.findOne(9L))
                    .categoryList(categories4)
                    .availableFrom(LocalDate.now().minusDays(5))
                    .availableUntil(LocalDate.now().minusDays(1))
                    .image("data:image/gif;base64,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")
                    .build());

            System.out.println("All Products added");

        };
    }
}
