package com.infosupport.bsklantbeheer.validation;

import com.infosupport.bsklantbeheer.domain.Customer;

/**
 * Created by maart on 16-1-2017.
 */
public class CustomerValidation {

    public static boolean validateCustomer(Customer customer) {
        if (customer != null) {
            if (!validateFirstName(customer)) {
                return false;
            }
            if (!validateLastName(customer)) {
                return false;
            }
            if (!validateEmail(customer)) {
                return false;
            }
            if (!validatePhone(customer)) {
                return false;
            }
            if (!validateBirthDate(customer)) {
                return false;
            }
            if (!validateAddress(customer)) {
                return false;
            }
        } else {
            return false;
        }
        return true;
    }

    private static boolean validateAddress(Customer customer) {
        if (customer.getAddresses() != null) {
            if (customer.getAddresses().size() >= 1) {
                return true;
            }
        }
        return false;
    }

    private static boolean validateBirthDate(Customer customer) {
        String pattern = "^((19|20)\\d\\d)-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])$";
        if (customer.getBirthDate() != null) {
            if (customer.getBirthDate().matches(pattern)) {
//                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
//                try {
//                    df.parse(customer.getBirthDate());
                return true;
//                } catch (Exception e) {
//                    return false;
//                }
            }
        }
        return false;
    }

    private static boolean validatePhone(Customer customer) {
        return customer.getPhone() != null && customer.getPhone().length() >= 6;
    }

    private static boolean validateEmail(Customer customer) {
        String pattern = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$";
        if (customer.getEmail() != null) {
            if (customer.getEmail().matches(pattern)) {
                return true;
            }
        }
        return false;
    }

    private static boolean validateLastName(Customer customer) {
        return customer.getLastName() != null && customer.getLastName().length() >= 2;
    }

    private static boolean validateFirstName(Customer customer) {
        return customer.getFirstName() != null && customer.getFirstName().length() >= 2;
    }

}
