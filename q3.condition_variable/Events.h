#include<mutex>
#include<condition_variable>

class trigger_event{
public:
    explicit trigger_event():current_thread(0){}

    void wait(uint thread_num){
        std::unique_lock<std::mutex> lock(m_mutex);
        m_cv.wait(lock,[&](){return thread_num == (current_thread+1);});  
    }

    void signal(){
        std::unique_lock<std::mutex> lock(m_mutex);
        current_thread++;
        m_cv.notify_all();
    }

private:
    std::mutex m_mutex;
    std::condition_variable m_cv;
    uint current_thread;
};