import 'package:flutter/material.dart';
import 'package:stylux_ecommerce_app/presentation/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
<<<<<<< HEAD
<<<<<<< HEAD
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: 
    );
  }
}

=======
=======
       
>>>>>>> ccc7e75ccdcaddaa363a3164aacdb2d2d67afadd
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
     home: const SplashScreen(),
    );
  }
}
<<<<<<< HEAD
>>>>>>> 18c415320eba94e6141dc191927ac0653326f728
=======

>>>>>>> ccc7e75ccdcaddaa363a3164aacdb2d2d67afadd
