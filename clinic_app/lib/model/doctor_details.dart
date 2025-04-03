import 'package:flutter/material.dart';

class Doctor {
  String image;
  String categoryImage;
  String drName;
  String drCategory;
  Color containerColor;
  Color color;
  String date;
  int noOfDoctor;
  int time1;
  int time2;
  int time3;
  String consultantTime;
  String aboutDoctor;

  Doctor({
    required this.image,
    required this.categoryImage,
    required this.drName,
    required this.drCategory,
    required this.containerColor,
    required this.color,
    required this.date,
    required this.noOfDoctor,
    required this.time1,
    required this.time2,
    required this.time3,
    required this.consultantTime,
    required this.aboutDoctor,
  });
}

// Sample list of 7 doctors
List<Doctor> doctorList = [
  Doctor(
    image: "assets/images/doctor-1.png",
    categoryImage: 'assets/images/cardiologist.jpg',
    drName: "Dr. John Doe",
    drCategory: "Cardiologist",
    containerColor: Color(0xFF4B2C35),
    color: Color(0XFFF7D5DC),
    date: "03 April",
    noOfDoctor: 5,
    time1: 9,
    time2: 12,
    time3: 15,
    consultantTime: "Monday - 9:00 AM to 3:00 PM",
    aboutDoctor: "Dr. John Doe is an expert in heart diseases and treatments. "
        "He has over 15 years of experience treating cardiovascular disorders. "
        "He specializes in heart failure management and preventive cardiology. "
        "He has performed over 500 successful heart surgeries. "
        "Dr. Doe is dedicated to patient care and modern treatment approaches.",
  ),
  Doctor(
    image: 'assets/images/doctor-2.png',
    categoryImage: 'assets/images/dermatologist.jpg',
    drName: "Dr. Emily Smith",
    drCategory: "Dermatologist",
    containerColor: Color(0XFF5A4C42),
    color: Color(0XFFC9C8B9),
    date: "03 April",
    noOfDoctor: 3,
    time1: 10,
    time2: 13,
    time3: 16,
    consultantTime: "Tuesday - 10:00 AM to 4:00 PM",
    aboutDoctor: "Dr. Emily Smith specializes in skin treatments and dermatology. "
        "She has expertise in cosmetic and laser procedures. "
        "She has treated over 2,000 patients with various skin conditions. "
        "Her research on acne and skin allergies is widely recognized. "
        "She believes in a holistic approach to skin health.",
  ),
  Doctor(
    image: "assets/images/doctor-3.png",
    categoryImage: 'assets/images/Neurologist.jpg',
    drName: "Dr. David Williams",
    drCategory: "Neurologist",
    containerColor: Color(0XFFF75590),
    color:Color(0XFFFCE4D8),
    date: "03 April",
    noOfDoctor: 4,
    time1: 8,
    time2: 11,
    time3: 14,
    consultantTime: "Wednesday - 8:00 AM to 2:00 PM",
    aboutDoctor: "Dr. David Williams is a renowned neurologist with 12 years of experience. "
        "He specializes in treating epilepsy, stroke, and multiple sclerosis. "
        "He has conducted breakthrough research on Parkinson's disease. "
        "Dr. Williams is passionate about advancing neurotherapies. "
        "His patient-first approach has earned him national recognition.",
  ),
  Doctor(
    image: "assets/images/doctor-4.png",
    categoryImage: 'assets/images/Pediatrician.jpg',
    drName: "Dr. Sophia Johnson",
    drCategory: "Pediatrician",
    containerColor: Color(0XFFFF3B30),
    color: Color(0XFFF526CA),
    date: "03 April",
    noOfDoctor: 6,
    time1: 9,
    time2: 13,
    time3: 17,
    consultantTime: "Thursday - 9:00 AM to 5:00 PM",
    aboutDoctor: "Dr. Sophia Johnson is an expert in children's health and wellness. "
        "She has 10+ years of experience in pediatric care. "
        "She specializes in newborn health, vaccinations, and child nutrition. "
        "Her research on childhood obesity has been published in top journals. "
        "Dr. Johnson ensures a warm and caring environment for young patients.",
  ),
  Doctor(
    image: "assets/images/doctor-5.png",
    categoryImage: 'assets/images/Orthopedic Surgeon.jpg',
    drName: "Dr. Michael Brown",
    drCategory: "Orthopedic Surgeon",
    containerColor: Color(0XFF228B22),
    color: Color(0XFFFFF5E1),
    date: "03 April",
    noOfDoctor: 2,
    time1: 10,
    time2: 14,
    time3: 18,
    consultantTime: "Friday - 10:00 AM to 6:00 PM",
    aboutDoctor: "Dr. Michael Brown is an orthopedic surgeon with 15 years of experience. "
        "He specializes in joint replacement and minimally invasive surgeries. "
        "He has performed over 1,000 successful orthopedic procedures. "
        "His expertise includes treating sports injuries and fractures. "
        "Dr. Brown is committed to improving mobility and quality of life.",
  ),
  Doctor(
    image: "assets/images/doctor-6.png",
    categoryImage: 'assets/images/Gynecologist.jpg',
    drName: "Dr. Olivia Martinez",
    drCategory: "Gynecologist",
    containerColor: Color(0XFF06D6A0),
    color: Color(0XFFF8FFE5),
    date: "03 April",
    noOfDoctor: 5,
    time1: 8,
    time2: 12,
    time3: 16,
    consultantTime: "Saturday - 8:00 AM to 4:00 PM",
    aboutDoctor: "Dr. Olivia Martinez specializes in women's health and pregnancy care. "
        "She has 12 years of experience in gynecology and obstetrics. "
        "She provides expert care in fertility treatments and prenatal care. "
        "Her work in postpartum wellness has helped thousands of mothers. "
        "Dr. Martinez is known for her patient-centered approach to healthcare.",
  ),
  Doctor(
    image: "assets/images/doctor-7.png",
    categoryImage: 'assets/images/ENT.jpg',
    drName: "Dr. William Anderson",
    drCategory: "ENT Specialist",
    containerColor: Color(0XFFA31621),
    color: Color(0XFFFCF7F8),
    date: "03 April",
    noOfDoctor: 4,
    time1: 9,
    time2: 12,
    time3: 15,
    consultantTime: "Sunday - 9:00 AM to 3:00 PM",
    aboutDoctor: "Dr. William Anderson is an expert in ear, nose, and throat disorders. "
        "He has over 14 years of experience in ENT treatments and surgeries. "
        "He specializes in treating sinusitis, hearing loss, and throat infections. "
        "His research on cochlear implants has been recognized internationally. "
        "Dr. Anderson is dedicated to providing high-quality ENT care.",
  ),
];
