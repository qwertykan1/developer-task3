<?
$host = 'localhost';
$db = 'developer_task3_db';
$username = 'root';
$password = '';
$charset = 'utf8';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
	PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
	PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ
];

$connection = new PDO($dsn, $username, $password, $options);

$connection->query("SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''))");

$result = $connection->query("SELECT regions.name region, cities.name city, pharmacies.name pharmacy, COUNT(DISTINCT pharmacy_product.product_id) product_count FROM regions join cities on cities.region_id = regions.id join pharmacies ON pharmacies.city_id=cities.id join pharmacy_product on pharmacies.id=pharmacy_product.pharmacy_id WHERE pharmacy_product.product_id NOT IN (SELECT product_id FROM black_list WHERE city_id=cities.id) GROUP BY pharmacies.name")->fetchAll();

echo '<table border="1"><thead><tr><th>Регион</th><th>Город</th><th>Аптека</th><th>Количество товаров</th></tr></thead><tbody>';
for ($i=0; $i < count($result); $i++) 
{
	echo "<tr><td>{$result[$i]->region}</td><td>{$result[$i]->city}</td><td>{$result[$i]->pharmacy}</td><td style='text-align:center'>{$result[$i]->product_count}</td></tr>";
}
echo '</tbody></table>';