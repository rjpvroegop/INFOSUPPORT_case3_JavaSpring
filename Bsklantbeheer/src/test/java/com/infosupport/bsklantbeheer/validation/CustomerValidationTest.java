package com.infosupport.bsklantbeheer.validation;

import com.infosupport.bsklantbeheer.domain.Customer;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.runners.MockitoJUnitRunner;

import java.util.ArrayList;

import static com.infosupport.bsklantbeheer.builders.CustomerBuilder.testCustomerBuilder;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

/**
 * Created by maart on 16-1-2017.
 */
@RunWith(MockitoJUnitRunner.class)
public class CustomerValidationTest {

    @Test
    public void validateCustomerSucces() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(true));
    }

    @Test
    public void validateCustomerNull() throws Exception {
        //Arrange and Act
        boolean result = CustomerValidation.validateCustomer(null);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerFirstNameNull() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().firstName(null).build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerFirstNameSmallerThan2() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().firstName("A").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerFirstNameBiggerThanEqual2() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().firstName("Ad").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(true));
    }

    @Test
    public void validateCustomerLastNameNull() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().lastName(null).build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerLastNameSmallerThan2() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().lastName("A").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerLastNameBiggerThanEqual2() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().lastName("AA").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(true));
    }

    @Test
    public void validateCustomerEmailNull() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().email(null).build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerEmailInvalidNoAt() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().email("AA").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerEmailInvalidNoDotDomain() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().email("AA@gmail").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerEmailInvalidNoName() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().email("@gmail.com").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerEmailValid() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().email("aa@gmail.com").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(true));
    }

    @Test
    public void validateCustomerPhoneNull() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().phone(null).build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerPhoneSmallerThan6() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().phone("12345").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerPhoneBiggerThanEqual6() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().phone("123456").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(true));
    }

    @Test
    public void validateCustomerDateNull() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().birthDate(null).build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerDateValid() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().birthDate("1993-1-16").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(true));
    }

    @Test
    public void validateCustomerDateFormatInvalid() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().birthDate("16-1-1993").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerDateDayInvalid() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().birthDate("1993-1-33").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerDateMonthInvalid() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().birthDate("1993-13-15").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerDateNonDigitInvalid() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().birthDate("1993-AK-15").build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerAddressNull() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().addresses(null).build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }

    @Test
    public void validateCustomerHasAddress() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(true));
    }

    @Test
    public void validateCustomerHasNoAddress() throws Exception {
        //Arrange
        Customer customer = testCustomerBuilder().addresses(new ArrayList<>()).build();

        //ACT
        boolean result = CustomerValidation.validateCustomer(customer);

        //Assert
        assertThat(result, is(false));
    }
}