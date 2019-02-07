/*3) Use c++11 std::condition_var in solution from #3 to synchronize threads
      -- Psuedo Code --
      main:
        1) start: thread 1, thread 2, thread 3
        2) all threads block on condition_signal
        3) main signals condition_signal
        4) join all threads to prevent exit main */

#include <iostream>
#include <thread>
#include <mutex>
#include <condition_variable>

std::mutex mtx;
std::condition_variable cond_var;
int current_thread=0;
int lap_num=0;


void foo(int thread_num, std::string thread_name) {
	//perform other tasks -- independent of race condition --
	std::cout << thread_name << ":Starting, waiting\n" ;
	std::this_thread::sleep_for(std::chrono::milliseconds(500));

	//threads lock -- perform a common task, shared resources go here --
	std::unique_lock<std::mutex> ul_1(mtx);
	cond_var.wait(ul_1, [thread_num](){ return thread_num == (current_thread+1);});	//  2) all threads block on condition_signal
	current_thread++;	//global thread_num variable

	std::cout<< thread_name << ":signal received, doing work ....\n" ;
	std::this_thread::sleep_for(std::chrono::milliseconds(500));
	std::cout << thread_name << ":done with work, signal next thread \n";
	std::this_thread::sleep_for(std::chrono::milliseconds(500));

	ul_1.unlock();
	cond_var.notify_all();	// although notifies all but only the next thread can start due to the wait condition in lambda.
}



int main() {
while(1){
	//main lock 1 -- 1) start: thread 1, thread 2, thread 3 --
	std::unique_lock<std::mutex> ul_main1(mtx);
	printf("main:starting all threads.\n");
	current_thread=0;	//reset after each lap
	std::thread thread1(foo,1,"thread1");
	std::thread thread2(foo,2,"thread2");
	std::thread thread3(foo,3,"thread3");
	std::this_thread::sleep_for(std::chrono::milliseconds(500)); // optional
	ul_main1.unlock();
	cond_var.notify_one();
	printf("main:starting thread1.\n");

	//main lock 2 -- waits for the last thread (thread 3)--
	std::unique_lock<std::mutex> ul_main2(mtx);
	cond_var.wait(ul_main2,[](){return current_thread==3;});
	lap_num++;
	std::cout << "elapsed lap(s) "<< lap_num << " \n";
	ul_main2.unlock();

	//join all threads -- 4) join all threads to prevent exit main
	thread1.join();
	thread2.join();
	thread3.join();
	std::cout << "\n";

}
}
