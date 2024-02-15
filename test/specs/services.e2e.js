import { browser, expect } from '@wdio/globals'

import ServicePage from 'page-objects/services.page'

describe('Service page', () => {
  it('Should be on the "Service" page', async () => {
    await ServicePage.open()

    await expect(browser).toHaveTitle(
      'Services | Core Delivery Platform - Portal'
    )
    await expect(ServicePage.pageHeading).toHaveText('Services')
  })
})
