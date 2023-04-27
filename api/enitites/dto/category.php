<?php
require_once('../../helpers/validator.php');
require_once('../../enitites/dao/category_queries.php');

//Class with dependeces at he Querie's file
class Category extends CategoryQueries
{
    //Atributes to do manipule data
    protected $category_id = null;
    protected $category_name = null;
    protected $category_img = null;
    protected $category_description = null;
    protected $route = '../../images/categories/';

    //Method's set for each atribute
    public function setId($value)
    {
        if ($value) {
            $this->category_id = $value;
            return true;
        } else {
            return false;
        }
    }
    public function setName($value)
    {
        if ($value) {
            $this->category_name = $value;
            return true;
        } else {
            return false;
        }
    }
    public function setImg($value)
    {
        if (Validator::validateImageFile($value, 1500, 1500)) {
            $this->category_img = Validator::getFileName();
            return true;
        } else {
            return false;
        }
    }
    public function setDescription($value)
    {
        if ($value) {
            $this->category_description = $value;
            return true;
        } else {
            return false;
        }
    }
    //Method's get for each atribute
    public function getId()
    {
        return $this->category_id;
    }
    public function getName()
    {
        return $this->category_name;
    }
    public function getImg()
    {
        return $this->category_img;
    }
    public function getDescription()
    {
        return $this->category_description;
    }
    //This method getRuta is to capture the url of the category image
    public function getROute()
    {
        return $this->route;
    }
}