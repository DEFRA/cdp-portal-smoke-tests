import { browser, expect } from '@wdio/globals'

import ServicePage from 'page-objects/services.page'

describe('Service page', () => {
  it('Should be on the "Service" page', async () => {
    await browser.deleteCookies(['userSession'])
    await browser.deleteCookies(['cdpPortalSession'])
    await browser.url('')
    await browser.maximizeWindow()
    await ServicePage.open()

    await expect(browser).toHaveTitle(
      'Services | Core Delivery Platform - Portal'
    )
    await expect(ServicePage.pageHeading).toHaveText('Services')
    await browser.deleteCookies()
  })
})
