/*1) Reimplement c++11 lock_guard (NOT use std::lock_guard). Use namespace
      to allow you to call your class impl "lock_guard" and not conflict with
      std::lock_guard
*/
#include <iostream>
#include<mutex>

namespace custom_locks {
/*a simple scoped lock guard implementation*/
template<typename _Mutex_t>
class lock_guard {
	_Mutex_t& m_mutex;

public:
	lock_guard(_Mutex_t& _m): m_mutex(_m){
		m_mutex.lock();
	}

	~lock_guard(){
		m_mutex.unlock();
	}

	//deleting unused constructors to avoid copy/move/assignment
	lock_guard(const lock_guard&) = delete;
	lock_guard& operator=(const lock_guard&) = delete;
	lock_guard(const lock_guard&&) = delete;
	lock_guard& operator=(const lock_guard&&) = delete;
};

}



