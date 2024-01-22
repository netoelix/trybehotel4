SELECT 
    u.first_name AS 'Hospede',
    h.name AS 'Hotel',
    r.price AS 'Diária',
    h.star AS 'Estrelas',
    ru.check_in AS 'Data de Entrada do hospede',
    ru.check_out AS 'Data de Saída do hospede'
FROM 
    users u
INNER JOIN 
    room_users ru ON u.id = ru.user_id
INNER JOIN 
    rooms r ON ru.room_id = r.id
INNER JOIN 
    hotels h ON r.hotel_id = h.id
WHERE 
    h.star >= 3 
    AND r.price <= 500.00 
    AND r.available = 1;