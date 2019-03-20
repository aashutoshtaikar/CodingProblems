/*  4) Use your implementation of c++11 lock_guard (NOT std::lock_guard)
     to protect a common resource in your threading example from #3 and #4
*/

#include <iostream>
#include <thread>
#include <mutex>
#include "q1.custom_lock.h"


std::mutex mtx;		//mutex1
std::mutex mtx2;	//mutex2
std::mutex mtx3;	//mutex3

//sharedVar as a common resource
int sharedVar = 0;

void foo(){
	printf("doing some work from thread1 %d, shared var:%d \n", std::this_thread::get_id(), sharedVar);
	std::this_thread::sleep_for(std::chrono::milliseconds(50));	//set speed here to check race conditions

	custom_locks::lock_guard<std::mutex,std::mutex,std::mutex> lg_1;
	lg_1.lock(mtx,mtx2,mtx3);
	for(int i = 1; i<=10;i++) sharedVar++;
	std::this_thread::sleep_for(std::chrono::seconds(2));
	printf("operating over shared resource from thread1 %d, shared var:%d \n", std::this_thread::get_id(), sharedVar);
	lg_1.unlock(mtx,mtx2,mtx3);
}

void bar(){
	printf("doing some work from thread2 %d, shared var:%d \n", std::this_thread::get_id(), sharedVar);
	std::this_thread::sleep_for(std::chrono::milliseconds(250));	//set speed here to check race conditions

	custom_locks::lock_guard<std::mutex,std::mutex,std::mutex> lg_1;
	lg_1.lock(mtx,mtx2,mtx3);
	for(int i = 1; i<=10;i++) sharedVar++;
	std::this_thread::sleep_for(std::chrono::seconds(1));
	printf("operating over shared resource from thread2 %d, shared var:%d \n", std::this_thread::get_id(), sharedVar);
	lg_1.unlock(mtx,mtx2,mtx3);
}

void baz(){
	printf("doing some work from thread3 %d, shared var:%d \n", std::this_thread::get_id(), sharedVar);
	std::this_thread::sleep_for(std::chrono::milliseconds(500));	//set speed here to check race conditions

	custom_locks::lock_guard<std::mutex,std::mutex,std::mutex> lg_1;
	lg_1.lock(mtx,mtx2,mtx3);
	for(int i = 1; i<=10;i++) sharedVar++;
	std::this_thread::sleep_for(std::chrono::seconds(1));
	printf("operating over shared resource from thread3 %d, shared var:%d \n", std::this_thread::get_id(), sharedVar);
	lg_1.unlock(mtx,mtx2,mtx3);
}

int main() {
while(true){

	std::thread thread1(foo);
	std::thread thread2(bar);
	std::thread thread3(baz);

	thread1.join();
	thread2.join();
	thread3.join();

	std::cout << "finished\n";
	}
	return 0;
}
