<?php

header("Content-Type: application/json");

echo json_encode([
    [
        "id"=> 2,
        "first_name"=> "田中",
        "last_name"=> "太郎"
    ]
]);
