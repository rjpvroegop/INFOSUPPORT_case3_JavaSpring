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
                    .build());

            productRepository.save(Product.builder()
                    .name("Dames fiets")
                    .description("Een dames fiets met lage instap")
                    .supplier(supplierRepository.findOne(1L))
                    .categoryList(categories5)
                    .availableFrom(LocalDate.now().minusDays(1))
                    .availableUntil(LocalDate.now().plusDays(5))
                    .build());

            productRepository.save(Product.builder()
                    .name("Trapper")
                    .description("Een trapper is een belangrijk onderdeel van de fiets, dit onderdeel moet stevig zijn.")
                    .supplier(supplierRepository.findOne(3L))
                    .categoryList(categories2)
                    .availableFrom(LocalDate.now().minusDays(1))
                    .availableUntil(LocalDate.now().plusDays(5))
                    .build());

            productRepository.save(Product.builder()
                    .name("Windjack")
                    .description("handig als het hard waait")
                    .supplier(supplierRepository.findOne(8L))
                    .categoryList(categories3)
                    .availableFrom(LocalDate.now().minusDays(5))
                    .availableUntil(LocalDate.now().minusDays(1))
                    .build());

            productRepository.save(Product.builder()
                    .name("veiligheidsslot")
                    .description("een goed veiliheidsslot voorkomt dat je fiets gestolen wordt")
                    .supplier(supplierRepository.findOne(9L))
                    .categoryList(categories4)
                    .availableFrom(LocalDate.now().minusDays(5))
                    .availableUntil(LocalDate.now().minusDays(1))
                    .build());

            System.out.println("All Products added");

        };
    }
}
