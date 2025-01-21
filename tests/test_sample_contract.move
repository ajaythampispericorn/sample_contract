module counter::test_counter {
    use counter::counter;
    use std::debug;
    use std::string;
    use std::signer;  
    use aptos_framework::account;  

    #[test(account = @0x1)]
    fun test_counter(account: signer) { 
        debug::print(&string::utf8(b"Running test for Counter module..."));

        let addr = signer::address_of(&account);

        // initialize counter
        counter::init_counter(&account);

        // counter = 0
        assert!(counter::get_value(addr) == 0, 1);

        // counter +=10
        counter::increment(&account, 10);

        // counter = 10
        assert!(counter::get_value(addr) == 10, 2);

        debug::print(&string::utf8(b"Test for Counter module passed!"));
    }
}