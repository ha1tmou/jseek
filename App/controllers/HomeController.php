<?php

namespace App\controllers;

use Framework\Database;

class HomeController
{
  private $db;

  public function __construct()
  {
    $config = require basePath('config/db.php');
    $this->db = new Database($config);
  }

  /**
   * Show the latest listings
   *
   * @return void
   *
   */

  public function index()
  {
    $listings = $this->db->query('SELECT * FROM listings ORDER BY created_at DESC LIMIT 6')->fetchAll();

    loadView('home', [
      'listings' => $listings
    ]);
  }
}
