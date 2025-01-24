# MOVE COUNTER MODULE  
## Overview  

This is a simple counter module written in Move language for the Aptos blockchain. The module allows:  

* Initializing a counter for an account  
* Incrementing the counter by a specified amount  
* Retrieving the current counter value  

## Prerequisites  
* Aptos CLI  
* Move Prover  

## Installation  

### Aptos CLI  

Go to Aptos [CLI release page](https://github.com/aptos-labs/aptos-core/releases?q=cli&expanded=true)  
Follow the instructions given to install Aptos CLI  

To verify installation,   
```
aptos --version  

```

### Move Prover  

Once Aptos CLI is successfully installed in the system, execute the following command to install Move Prover


``` 
aptos update prover-dependencies

```  

## Setup CLI Configuration  

1. Run the command  
```
aptos init  
```  

To use default settings, you can provide no input and just press “Enter”.  

## Compile and Test  

```
aptos move compile  

aptos move test   
```  

## Module Functions  

* init_counter: Initialize a counter with value 0  
* increment: Increase counter value by specified amount  
* get_value: Retrieve current counter value  