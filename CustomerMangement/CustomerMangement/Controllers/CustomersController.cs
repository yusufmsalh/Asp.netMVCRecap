using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CustomerMangement.Models;

namespace CustomerMangement.Controllers
{
    public class CustomersController : Controller
    {
        private CustomerMangemnetDBEntities db = new CustomerMangemnetDBEntities();

        // GET: Customers
        public ActionResult Index(string searchBy, string search="")
        {
            search = search.Trim();
           
            if (searchBy == "Name")
            {
                return View(db.Customer.Where(x => x.CstName.Contains(search) || search == "").ToList());
            }
            else if (searchBy == "Email")
            {
                return View(db.Customer.Where(x => x.CstEmail.Contains(search) || search == "").ToList());
            }
            else
            {
                return View(db.Customer.Where(x => x.CstPhoneNumber.Contains(search) || search == "").ToList());
            }

        //    return View(db.Customer.ToList());
        }

        // GET: Customers/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Customer customer = db.Customer.Find(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

        // GET: Customers/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Customers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CstomerID,CstName,CstDateOfBirth,Gender,CstEmail,CstAddress,CstPhoneNumber,CstNotes")] Customer customer)
        {
            if (ModelState.IsValid)
            {
                db.Customer.Add(customer);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(customer);
        }

        // GET: Customers/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
           
            Customer customer = db.Customer.Find(id);
           if (customer == null)
            {
                return HttpNotFound();
            }
            IEnumerable<SelectListItem> Gender = new List<SelectListItem>()
                        {
                        new SelectListItem { Text = "Male", Value="Male",Selected = (customer.Gender=="Male" )?true :false },
                        new SelectListItem { Text = "Female", Value="Female" ,Selected = (customer.Gender=="Female" )?true :false }
                        };


            ViewBag.Gender = Gender;
            return View(customer);
        }

        // POST: Customers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CstomerID,CstName,CstDateOfBirth,Gender,CstEmail,CstAddress,CstPhoneNumber,CstNotes")] Customer customer)
        {
            if (ModelState.IsValid)
            {
                db.Entry(customer).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(customer);
        }

        // GET: Customers/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Customer customer = db.Customer.Find(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

        // POST: Customers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Customer customer = db.Customer.Find(id);
            db.Customer.Remove(customer);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
