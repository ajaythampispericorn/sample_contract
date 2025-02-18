module counter::counter {
    use std::signer;
    use std::debug;
    use std::string;

    /// resource for counter
    struct Counter has key {
        value: u64,
    }

    /// initialize the counter 
    public entry fun init_counter(account: &signer) {
        let addr = signer::address_of(account);
        move_to(account, Counter { value: 0 });
    }

    /// increment the counter by an amount
    public entry fun increment(account: &signer, by: u64) acquires Counter {
        let addr = signer::address_of(account);
        let counter = borrow_global_mut<Counter>(addr);
        counter.value = counter.value + by;
    }

    /// current counter value
    public fun get_value(addr: address): u64 acquires Counter {
        borrow_global<Counter>(addr).value
    }
}