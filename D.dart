/**
 * Dependency inversion module 
 * 
 * High-level module should not depends on low level module 
 * both should depends on Abstraction
 * 
 * Abstraction sould not depends on details 
 * details should depends on abstraction
 * 
 * High-level Modules: Modules or classes that deal with complex logic or orchestration of lower-level components.
 * 
 * Low-level Modules: Modules or classes that deal with fundamental or rudimentary operations.
 * 
 * Abstractions: Interfaces or abstract classes that define the behavior or contract that concrete implementations must adhere to.
 * 
 * Details: Concrete implementations of abstractions, providing specific functionality.
 * 
 */

// Abstraction: PaymentGateway
abstract class PaymentGateway {
  void processPayment(double amount);
}

// Concrete implementation: PayPalGateway
class PayPalGateway implements PaymentGateway {
  @override
  void processPayment(double amount) {
    print('Processing payment of \$$amount using PayPal...');
    // Actual implementation details for processing payment via PayPal
  }
}

// Concrete implementation: StripeGateway
class StripeGateway implements PaymentGateway {
  @override
  void processPayment(double amount) {
    print('Processing payment of \$$amount using Stripe...');
    // Actual implementation details for processing payment via Stripe
  }
}

// High-level module: PaymentService
class PaymentService {
  final PaymentGateway _paymentGateway;

  PaymentService(this._paymentGateway);

  void processPayment(double amount) {
    _paymentGateway.processPayment(amount);
  }
}

void main() {
  // Creating instances of concrete implementations
  PaymentGateway paypalGateway = PayPalGateway();
  PaymentGateway stripeGateway = StripeGateway();

  // Using high-level module PaymentService with different payment gateways
  PaymentService paypalService = PaymentService(paypalGateway);
  paypalService.processPayment(100.0); // Process payment using PayPal

  PaymentService stripeService = PaymentService(stripeGateway);
  stripeService.processPayment(150.0); // Process payment using Stripe
}
