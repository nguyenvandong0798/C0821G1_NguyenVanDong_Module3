DELIMITER //

CREATE PROCEDURE find_all_customers()

BEGIN

  SELECT * FROM customers;

END //

DELIMITER ;

call find_all_customers();

DELIMITER //
DROP PROCEDURE IF EXISTS `find_all_customers`//

CREATE PROCEDURE find_all_customers()

BEGIN

SELECT * FROM customers where customers_number = 175;

END //
DELIMITER ;


call find_all_customers();