<?php

namespace Drupal\Tests\imagekit\Unit;

use Drupal\Tests\UnitTestCase;

/**
 * Tests the path is correctly replaced.
 *
 * @group imagekit
 * @coversDefaultClass \Drupal\imagekit\
 */
class ImagePathTest extends UnitTestCase {

  /**
   * {@inheritdoc}
   */
  public function setUp() {
    parent::setUp();
  }

  /**
   * Templatetest
   *
   * @covers ::testBlank
   */
  public function testBlank() {
    $this->assertEqual(1, 1);
  }

}
