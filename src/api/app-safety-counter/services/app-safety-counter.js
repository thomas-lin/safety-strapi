'use strict';

/**
 * app-safety-counter service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::app-safety-counter.app-safety-counter');
