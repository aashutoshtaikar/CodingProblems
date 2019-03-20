void lock() {}
//usage lock<std::mutex,std::mutex,std::mutex> (mtx,mtx2,mtx3);
template <typename _Mutex_t, typename... Mrest>
void lock(_Mutex_t &_m, Mrest &... next)
{
    _m.lock();
    lock(next...);
}

void unlock() {}
// usage unlock<std::mutex,std::mutex,std::mutex> (mtx,mtx2,mtx3);
template <typename _Mutex_t, typename... Mrest>
void unlock(_Mutex_t &_m, Mrest &... next)
{
    _m.unlock();
    unlock(next...);
}