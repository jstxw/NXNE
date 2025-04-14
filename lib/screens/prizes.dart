import 'package:flutter/material.dart';
import '../widgets/prizes_header.dart';
import '../widgets/prizes_nav.dart';
import '../widgets/prizes_items.dart';

class IPhone14Plus4Screen extends StatelessWidget {
  const IPhone14Plus4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              // Header with logo and icon
              const OffersHeader(),

              // Main content area with background
              Stack(
                children: [
                  // Background image
                  Container(
                    margin: const EdgeInsets.only(top: -11),
                    padding: const EdgeInsets.only(top: 31),
                    width: double.infinity,
                    constraints: const BoxConstraints(minHeight: 724),
                    child: Column(
                      children: [
                        // Background image
                        Positioned.fill(
                          child: Image.network(
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/7c4c9688a9d16d8aee09442af7614a7a9db7fc26?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                            fit: BoxFit.cover,
                          ),
                        ),

                        // Content container
                        Container(
                          padding: const EdgeInsets.only(left: 12),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              // Navigation bar
                              const OffersNavigation(),

                              // Offers grid
                              Container(
                                margin: const EdgeInsets.only(top: 25, left: 16),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // First column of offers
                                    Expanded(
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // Images column
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Image.network(
                                                'https://cdn.builder.io/api/v1/image/assets/TEMP/e19b451ede94a773daea2f5b63903e8b62721b86?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                width: 90,
                                                height: 78,
                                                fit: BoxFit.contain,
                                              ),
                                              const SizedBox(height: 22),
                                              Image.network(
                                                'https://cdn.builder.io/api/v1/image/assets/TEMP/f6025e670bab0a4f2b60011fd5cc98853e9837ce?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                width: 90,
                                                height: 78,
                                                fit: BoxFit.contain,
                                              ),
                                              const SizedBox(height: 8),
                                              Image.network(
                                                'https://cdn.builder.io/api/v1/image/assets/TEMP/156b787af3c4a04d1b6eb322dbec3d862962f38c?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                width: 93,
                                                height: 83,
                                                fit: BoxFit.contain,
                                              ),
                                              const SizedBox(height: 7),
                                              Image.network(
                                                'https://cdn.builder.io/api/v1/image/assets/TEMP/c1e358127fab1310726fee42a4931bb0647af8dc?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                width: 90,
                                                height: 78,
                                                fit: BoxFit.contain,
                                              ),
                                              const SizedBox(height: 15),
                                              Image.network(
                                                'https://cdn.builder.io/api/v1/image/assets/TEMP/8c2022bf9ffaa332f6b7154b1e00753204173c8e?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                width: 90,
                                                height: 78,
                                                fit: BoxFit.contain,
                                              ),
                                              const SizedBox(height: 15),
                                              Image.network(
                                                'https://cdn.builder.io/api/v1/image/assets/TEMP/12ed701f7dccb735f1e30714d4fd3083d6701449?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                width: 90,
                                                height: 78,
                                                fit: BoxFit.contain,
                                              ),
                                            ],
                                          ),

                                          // First column details
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      'Backstage Tour',
                                                      style: TextStyle(
                                                        fontFamily: 'Audiowide',
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w400,
                                                        letterSpacing: -1.2,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 14),
                                                    Row(
                                                      children: [
                                                        Image.network(
                                                          'https://cdn.builder.io/api/v1/image/assets/TEMP/335b1dea40cc860c308721a8b27828525dea14bc?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                          width: 30,
                                                          height: 30,
                                                        ),
                                                        const SizedBox(width: 8),
                                                        const Text(
                                                          '450',
                                                          style: TextStyle(
                                                            fontFamily: 'Audiowide',
                                                            fontSize: 20,
                                                            color: Color(0xFFDDDF4F),
                                                            fontWeight: FontWeight.w400,
                                                            letterSpacing: -2,
                                                            shadows: [
                                                              Shadow(
                                                                color: Colors.black26,
                                                                blurRadius: 4,
                                                                offset: Offset(0, 4),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 5),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(50),
                                                        color: const Color(0xFF892626),
                                                      ),
                                                      padding: const EdgeInsets.symmetric(
                                                        horizontal: 13,
                                                        vertical: 1,
                                                      ),
                                                      child: const Text(
                                                        'Exchange',
                                                        style: TextStyle(
                                                          fontFamily: 'Audiowide',
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w400,
                                                          letterSpacing: -1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              // Signed Merch
                                              const SizedBox(height: 24),
                                              const Text(
                                                'Signed Merch',
                                                style: TextStyle(
                                                  fontFamily: 'Audiowide',
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: -1.3,
                                                ),
                                              ),
                                              const SizedBox(height: 7),
                                              Row(
                                                children: [
                                                  Image.network(
                                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/335b1dea40cc860c308721a8b27828525dea14bc?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                  const SizedBox(width: 8),
                                                  const Text(
                                                    '280',
                                                    style: TextStyle(
                                                      fontFamily: 'Audiowide',
                                                      fontSize: 20,
                                                      color: Color(0xFFDDDF4F),
                                                      fontWeight: FontWeight.w400,
                                                      letterSpacing: -2,
                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black26,
                                                          blurRadius: 4,
                                                          offset: Offset(0, 4),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 5),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  color: const Color(0xFF892626),
                                                ),
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 13,
                                                  vertical: 1,
                                                ),
                                                child: const Text(
                                                  'Exchange',
                                                  style: TextStyle(
                                                    fontFamily: 'Audiowide',
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: -1.2,
                                                  ),
                                                ),
                                              ),

                                              // Spotify Premium
                                              const SizedBox(height: 22),
                                              const Text(
                                                'Spotify Premium',
                                                style: TextStyle(
                                                  fontFamily: 'Audiowide',
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: -1.3,
                                                ),
                                              ),
                                              const SizedBox(height: 6),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 9),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Image.network(
                                                          'https://cdn.builder.io/api/v1/image/assets/TEMP/335b1dea40cc860c308721a8b27828525dea14bc?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                          width: 30,
                                                          height: 30,
                                                        ),
                                                        const SizedBox(width: 4),
                                                        const Text(
                                                          '100',
                                                          style: TextStyle(
                                                            fontFamily: 'Audiowide',
                                                            fontSize: 20,
                                                            color: Color(0xFFDDDF4F),
                                                            fontWeight: FontWeight.w400,
                                                            letterSpacing: -2,
                                                            shadows: [
                                                              Shadow(
                                                                color: Colors.black26,
                                                                blurRadius: 4,
                                                                offset: Offset(0, 4),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 5),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(50),
                                                        color: const Color(0xFF892626),
                                                      ),
                                                      padding: const EdgeInsets.symmetric(
                                                        horizontal: 13,
                                                        vertical: 1,
                                                      ),
                                                      child: const Text(
                                                        'Exchange',
                                                        style: TextStyle(
                                                          fontFamily: 'Audiowide',
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w400,
                                                          letterSpacing: -1.2,
                                                        ),
                                                      ),
                                                    ),

                                                    // Downloadable Mixap
                                                    const SizedBox(height: 13),
                                                    const Text(
                                                      'Downloadable Mixap',
                                                      style: TextStyle(
                                                        fontFamily: 'Audiowide',
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w400,
                                                        letterSpacing: -1.2,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 37),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(50),
                                                        color: const Color(0xFF892626),
                                                      ),
                                                      padding: const EdgeInsets.symmetric(
                                                        horizontal: 13,
                                                        vertical: 1,
                                                      ),
                                                      child: const Text(
                                                        'Exchange',
                                                        style: TextStyle(
                                                          fontFamily: 'Audiowide',
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w400,
                                                          letterSpacing: -1.2,
                                                        ),
                                                      ),
                                                    ),

                                                    // Game stop Giftcards
                                                    const SizedBox(height: 15),
                                                    const Text(
                                                      'Game stop Giftcards',
                                                      style: TextStyle(
                                                        fontFamily: 'Audiowide',
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w400,
                                                        letterSpacing: -1.2,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 6),
                                                    Row(
                                                      children: [
                                                        Image.network(
                                                          'https://cdn.builder.io/api/v1/image/assets/TEMP/335b1dea40cc860c308721a8b27828525dea14bc?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                          width: 30,
                                                          height: 30,
                                                        ),
                                                        const SizedBox(width: 3),
                                                        const Text(
                                                          '50',
                                                          style: TextStyle(
                                                            fontFamily: 'Audiowide',
                                                            fontSize: 20,
                                                            color: Color(0xFFDDDF4F),
                                                            fontWeight: FontWeight.w400,
                                                            letterSpacing: -2,
                                                            shadows: [
                                                              Shadow(
                                                                color: Colors.black26,
                                                                blurRadius: 4,
                                                                offset: Offset(0, 4),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 5),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(50),
                                                        color: const Color(0xFF892626),
                                                      ),
                                                      padding: const EdgeInsets.symmetric(
                                                        horizontal: 13,
                                                        vertical: 1,
                                                      ),
                                                      child: const Text(
                                                        'Exchange',
                                                        style: TextStyle(
                                                          fontFamily: 'Audiowide',
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w400,
                                                          letterSpacing: -1.2,
                                                        ),
                                                      ),
                                                    ),

                                                    // Donate Your Points
                                                    const SizedBox(height: 12),
                                                    const Text(
                                                      'Donate Your Points',
                                                      style: TextStyle(
                                                        fontFamily: 'Audiowide',
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w400,
                                                        letterSpacing: -1.3,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 6),
                                                    Row(
                                                      children: [
                                                        Image.network(
                                                          'https://cdn.builder.io/api/v1/image/assets/TEMP/d60dd79b90a10e186bf433302e76089292184fe6?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                          width: 30,
                                                          height: 30,
                                                        ),
                                                        const SizedBox(width: 3),
                                                        const Text(
                                                          '50',
                                                          style: TextStyle(
                                                            fontFamily: 'Audiowide',
                                                            fontSize: 20,
                                                            color: Color(0xFFDDDF4F),
                                                            fontWeight: FontWeight.w400,
                                                            letterSpacing: -2,
                                                            shadows: [
                                                              Shadow(
                                                                color: Colors.black26,
                                                                blurRadius: 4,
                                                                offset: Offset(0, 4),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 5),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(50),
                                                        color: const Color(0xFF892626),
                                                      ),
                                                      padding: const EdgeInsets.symmetric(
                                                        horizontal: 13,
                                                        vertical: 1,
                                                      ),
                                                      child: const Text(
                                                        'Exchange',
                                                        style: TextStyle(
                                                          fontFamily: 'Audiowide',
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w400,
                                                          letterSpacing: -1.2,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),

                                          // Middle column images
                                          Column(
                                            children: [
                                              Image.network(
                                                'https://cdn.builder.io/api/v1/image/assets/TEMP/640ccb6885d878a234c38ba22f92c7d256bf41ff?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                width: 90,
                                                height: 78,
                                                fit: BoxFit.contain,
                                              ),
                                              const SizedBox(height: 15),
                                              Container(
                                                color: const Color(0xFFD9D9D9),
                                                child: Image.network(
                                                  'https://cdn.builder.io/api/v1/image/assets/TEMP/357fd7c55385cbb9ea717d2c4b2b8b284dda186c?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                  width: 90,
                                                  height: 78,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              const SizedBox(height: 9),
                                              Container(
                                                color: const Color(0xFFD9D9D9),
                                                child: Image.network(
                                                  'https://cdn.builder.io/api/v1/image/assets/TEMP/27b881bf9d8f48000b2a40825b3d1620da49cd51?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                  width: 90,
                                                  height: 78,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Image.network(
                                                'https://cdn.builder.io/api/v1/image/assets/TEMP/2a9d8d5f5844899f5ed7f92aeb9bf42391c56886?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                width: 90,
                                                height: 78,
                                                fit: BoxFit.contain,
                                              ),
                                              const SizedBox(height: 18),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 1),
                                                child: Column(
                                                  children: [
                                                    Image.network(
                                                      'https://cdn.builder.io/api/v1/image/assets/TEMP/c72a4feb6da3d8200178387139046c902be96328?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                      width: 90,
                                                      height: 78,
                                                      fit: BoxFit.contain,
                                                    ),
                                                    const SizedBox(height: 12),
                                                    Image.network(
                                                      'https://cdn.builder.io/api/v1/image/assets/TEMP/b1ac693c7b074a48eb6913e9c9da5f8ff2b8936f?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                      width: 81,
                                                      height: 105,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Right column
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Artist Meet and Great',
                                          style: TextStyle(
                                            fontFamily: 'Audiowide',
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -1.1,
                                          ),
                                        ),
                                        const SizedBox(height: 7),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.network(
                                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/335b1dea40cc860c308721a8b27828525dea14bc?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                  const SizedBox(width: 4),
                                                  const Text(
                                                    '550',
                                                    style: TextStyle(
                                                      fontFamily: 'Audiowide',
                                                      fontSize: 20,
                                                      color: Color(0xFFDDDF4F),
                                                      fontWeight: FontWeight.w400,
                                                      letterSpacing: -2,
                                                      shadows: [
                                                        Shadow(
                                                          color: Colors.black26,
                                                          blurRadius: 4,
                                                          offset: Offset(0, 4),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 5),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  color: const Color(0xFF892626),
                                                ),
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 13,
                                                  vertical: 1,
                                                ),
                                                child: const Text(
                                                  'Exchange',
                                                  style: TextStyle(
                                                    fontFamily: 'Audiowide',
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: -1.2,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              const Text(
                                                'Vinyls',
                                                style: TextStyle(
                                                  fontFamily: 'Audiowide',
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: -2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 9),
                                        Image.network(
                                          'https://cdn.builder.io/api/v1/image/assets/TEMP/a4c627387c21771cab0d847ef349c72ecd01df44?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                          width: 84,
                                          height: 117,
                                          fit: BoxFit.contain,
                                        ),
                                        const SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 2),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: const Color(0xFF892626),
                                                ),
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 13,
                                                  vertical: 1,
                                                ),
                                                child: const Text(
                                                  'Exchange',
                                                  style: TextStyle(
                                                    fontFamily: 'Audiowide',
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: -1.2,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 18),
                                              const Text(
                                                'Tickets to NXNEyouth',
                                                style: TextStyle(
                                                  fontFamily: 'Audiowide',
                                                  fontSize: 11,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: -1.1,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              const Align(
                                                alignment: Alignment.centerRight,
                                                child: Text(
                                                  '140',
                                                  style: TextStyle(
                                                    fontFamily: 'Audiowide',
                                                    fontSize: 20,
                                                    color: Color(0xFFDDDF4F),
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: -2,
                                                    shadows: [
                                                      Shadow(
                                                        color: Colors.black26,
                                                        blurRadius: 4,
                                                        offset: Offset(0, 4),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: const Color(0xFF892626),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 13,
                                            vertical: 1,
                                          ),
                                          child: const Text(
                                            'Exchange',
                                            style: TextStyle(
                                              fontFamily: 'Audiowide',
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -1.2,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        const Text(
                                          '21 inch Acoustic Guitar',
                                          style: TextStyle(
                                            fontFamily: 'Audiowide',
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -1.2,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.builder.io/api/v1/image/assets/TEMP/d60dd79b90a10e186bf433302e76089292184fe6?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                              width: 30,
                                              height: 30,
                                            ),
                                            const SizedBox(width: 5),
                                            const Text(
                                              '1200',
                                              style: TextStyle(
                                                fontFamily: 'Audiowide',
                                                fontSize: 20,
                                                color: Color(0xFFDDDF4F),
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: -2,
                                                shadows: [
                                                  Shadow(
                                                    color: Colors.black26,
                                                    blurRadius: 4,
                                                    offset: Offset(0, 4),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 3, right: 11),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  color: const Color(0xFF892626),
                                                ),
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 13,
                                                  vertical: 1,
                                                ),
                                                child: const Text(
                                                  'Exchange',
                                                  style: TextStyle(
                                                    fontFamily: 'Audiowide',
                                                    fontSize: 12,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: -1.2,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 9),
                                              const Text(
                                                'More',
                                                style: TextStyle(
                                                  fontFamily: 'Audiowide',
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: -2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 13),
                                        Row(
                                          children: [
                                            Image.network(
                                              'https://cdn.builder.io/api/v1/image/assets/TEMP/d60dd79b90a10e186bf433302e76089292184fe6?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                                              width: 30,
                                              height: 30,
                                            ),
                                            const SizedBox(width: 4),
                                            const Text(
                                              '+',
                                              style: TextStyle(
                                                fontFamily: 'Audiowide',
                                                fontSize: 20,
                                                color: Color(0xFFDDDF4F),
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: -2,
                                                shadows: [
                                                  Shadow(
                                                    color: Colors.black26,
                                                    blurRadius: 4,
                                                    offset: Offset(0, 4),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: const Color(0xFF892626),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 13,
                                            vertical: 1,
                                          ),
                                          child: const Text(
                                            'Exchange',
                                            style: TextStyle(
                                              fontFamily: 'Audiowide',
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -1.2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Bottom image
                        Image.network(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/64713be79da265ca7cdc9753596684f5d2ab9236?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}