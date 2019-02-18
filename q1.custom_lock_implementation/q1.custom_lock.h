/*1) Reimplement c++11 lock_guard (NOT use std::lock_guard). Use namespace
      to allow you to call your class impl "lock_guard" and not conflict with
      std::lock_guard
*/
#include <iostream>
#include<mutex>
#include<tuple>

namespace custom_locks {

template<typename... Mrest> class lock_guard;

/*a simple scoped lock guard like implementation*/
template <> class lock_guard<>{};

template<typename _Mutex_t, typename... Mrest>
class lock_guard<_Mutex_t,Mrest...>{
	// std::tuple<Mrest...> m_mutex;
public:
	void lock(_Mutex_t& _m){
		_m.lock();
	}

	void lock(_Mutex_t& _m, Mrest&... next){
		_m.lock();
		lock(next...);
	}


	void unlock(_Mutex_t& _m){
		_m.unlock();
	}
	
	void unlock(_Mutex_t& _m, Mrest&... next){
		_m.unlock();
		unlock(next...);
	}

	//deleting unused constructors to avoid copy/move/assignment
	lock_guard(const lock_guard&) = delete;
	lock_guard& operator=(const lock_guard&) = delete;
	lock_guard(const lock_guard&&) = delete;
	lock_guard& operator=(const lock_guard&&) = delete;
};



}



