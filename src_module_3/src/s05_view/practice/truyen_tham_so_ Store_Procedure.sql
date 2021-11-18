DELIMITER //

CREATE PROCEDURE get_customers_by_id

(IN customers_number INT(11))

BEGIN

  SELECT * FROM customers WHERE customers_number = customers_number;

END //

DELIMITER ;

call get_customers_by_id(175);

DELIMITER //

CREATE PROCEDURE get_customers_by_city(

    IN  in_city VARCHAR(50),

    OUT total INT

)

BEGIN

    SELECT COUNT(customers_number)

    INTO total

    FROM customers

    WHERE city = in_city;

END//

DELIMITER ;

CALL get_customers_by_count_city('Lyon',@total);

SELECT @total;

DELIMITER //

CREATE PROCEDURE set_counter(

    INOUT counter INT,

    IN inc INT

)

BEGIN

    SET counter = counter + inc;

END//

DELIMITER ;

SET @counter = 1;

CALL counter(@counter,1); 

CALL counter(@counter,1); 

CALL counter(@counter,5); 

SELECT @counter;