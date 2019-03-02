/*1) Reimplement c++11 lock_guard (NOT use std::lock_guard). Use namespace
      to allow you to call your class impl "lock_guard" and not conflict with
      std::lock_guard
*/

namespace custom_locks {

template <typename... Mrest>
class lock_guard;

/*a simple scoped lock guard like implementation*/
template <>
class lock_guard<>
{
};

template <typename _Mutex_t, typename... Mrest>
class lock_guard<_Mutex_t, Mrest...>
{
	// template <typename U, typename... Us>
	// void lock_this(U &&u, Us &&... rest)
	// {
	// 	u.lock();
	// 	lock_this(rest...);
	// }

	// template <typename U>
	// void lock_this(U &&u)
	// {
	// 	u.lock();
	// }

	// template <typename U, typename... Us>
	// void unlock_this(U &&u, Us &&... rest)
	// {
	// 	u.unlock();
	// 	unlock_this(rest...);
	// }

	// template <typename U>
	// void unlock_this(U &&u)
	// {
	// 	u.unlock();
	// }
public:
	lock_guard(){}
	
	void lock(){}

	void lock(_Mutex_t& _m, Mrest&... next)
	{
		_m.lock();
		lock(, next...);
	}
	void unlock(){}

	void unlock(_Mutex_t &_m, Mrest &... next)
	{
		_m.unlock();
		unlock(_m, next...);
	}

	//deleting unused constructors to avoid copy/move/assignment
	lock_guard(const lock_guard &) = delete;
	lock_guard &operator=(const lock_guard &) = delete;
	lock_guard(const lock_guard &&) = delete;
	lock_guard &operator=(const lock_guard &&) = delete;
};

}
