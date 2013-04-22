// Import BenchmarkBase class.
import 'package:benchmark_harness/benchmark_harness.dart';
import 'bench2d.dart';


// Create a new benchmark by extending BenchmarkBase.
class Bench2dBenchmark extends BenchmarkBase {
  const Bench2dBenchmark() : super("Bench2d");

  final bench2d = new Bench2d();

  static void main() {
    new Bench2dBenchmark().report();
  }

  // The benchmark code.
  void run() {
    bench2d.step();
  }

  // Not measured: setup code executed before the benchmark runs.
  void setup() {
    bench2d.initialize();
  }

  // Not measured: teardown code executed after the benchmark runs.
  void teardown() { }
}

// Main function runs the benchmark.
main() {
  // Run Bench2dBenchmark.
  Bench2dBenchmark.main();
}