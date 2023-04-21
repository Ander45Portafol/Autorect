<?php
require_once('../../helpers/database.php');
class Products_queries
{
    public function readAll()
    {
        $sql = 'SELECT * FROM productos ORDER BY id_producto';
        return Database::getRows($sql);
    }
    public function readOne()
    {
        $sql = 'SELECT * FROM productos WHERE id_producto=? ORDER BY id_producto';
        $params = array($this->id_producto);
        return Database::getRow($sql, $params);
    }
    public function readStatusProduct()
    {
        $sql = 'SELECT * from estados_productos';
        return Database::getRows($sql);
    }
    public function searchRow($value)
    {
        $sql='SELECT * FROM productos WHERE nombre_producto ILIKE ? ORDER BY nombre_producto';
        $params=array("%$value%");
        return Database::getRows($sql,$params);
    }
    public function deleteRow()
    {
        $sql = 'DELETE FROM productos WHERE id_producto=?';
        $params = array($this->id_producto);
        return Database::executeRow($sql, $params);
    }
    public function createRow()
    {
        $sql = 'INSERT INTO productos(nombre_producto, descripcion_producto, precio_producto, imagen_principal,existencias, id_categoria, id_modelo, id_estado_producto) VALUES(?,?,?,?,?,?,?,?)';
        $params = array($this->nombre_producto, $this->descripcion, $this->precio, $this->imagen,$this->existencias, $this->categoria, $this->modelo, $this->estado_producto);
        return Database::executeRow($sql, $params);
    }
    public function updateRow($current_image)
    {
        ($this->imagen)?Validator::deleteFile($this->getRuta(),$current_image):$this->imagen=$current_image;
        $sql = 'UPDATE productos SET nombre_producto=?, descripcion_producto=?,precio_producto=?,imagen_principal=?,existencias=?,id_categoria=?, id_modelo=?,id_estado_producto=? WHERE id_producto=?';
        $params = array($this->nombre_producto, $this->descripcion, $this->precio, $this->imagen,$this->existencias, $this->categoria, $this->modelo, $this->estado_producto, $this->id_producto);
        return Database::executeRow($sql, $params);
    }
    public function readImgs()
    {
        $sql = 'SELECT nombre_archivo_imagen FROM imagenes_productos WHERE id_producto = ?;';
        $params = array($this->id_producto);
        return Database::getRows($sql);
    }
    public function createImg()
    {
        $sql = 'INSERT INTO imagenes_productos(nombre_archivo_imagen, id_producto) VALUES(?,?)';
        $params = array($this->imagen_s, $this->id_producto);
        return Database::executeRow($sql, $params);
    }
}
