#!/bin/bash

add_user()
{

user=$1
paswd=$2

useradd -m -p $paswd $user && echo "User is now Sucessfully added"

}

#main

echo "Enter new username  here = "

read USR

sleep 1

echo "Enter the Password here = "

read  PWD


add_user $USR  $PWD