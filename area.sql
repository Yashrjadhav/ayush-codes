
CREATE TABLE areas (
    radius NUMBER,
    area NUMBER
);

DECLARE
    v_radius NUMBER;
    v_area NUMBER;
BEGIN

    FOR v_radius IN 5..9 LOOP

        v_area := 3.14159 * POWER(v_radius, 2);  

 
        INSERT INTO areas (radius, area) VALUES (v_radius, v_area);
    END LOOP;
    
    COMMIT;
END;
/