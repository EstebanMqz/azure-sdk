using System;
using System.Collections.Generic;
using System.Net.NetworkInformation;
using Newtonsoft.Json;
using System.IO;

class Network
{
    static void Main()
    {
        // Get all network interfaces on the system
        NetworkInterface[] interfaces = NetworkInterface.GetAllNetworkInterfaces();

        var networkData = new List<Dictionary<string, object>>();

        foreach (NetworkInterface ni in interfaces)
        {
            var data = new Dictionary<string, object>
            {
                {"Network Interface", ni.Name}
            };

            // Get the IP properties of the network interface
            IPInterfaceProperties ipProps = ni.GetIPProperties();

            // Get the IP addresses
            var addresses = new List<Dictionary<string, object>>();
            foreach (IPAddressInformation addr in ipProps.UnicastAddresses)
            {
                addresses.Add(new Dictionary<string, object>
                {
                    {"IP Address", addr.Address.ToString()},
                    {"Is DNS Eligible", addr.IsDnsEligible}
                });
            }

            data.Add("Addresses", addresses);
            networkData.Add(data);
        }

        // Serialize to JSON and write to file
        var json = JsonConvert.SerializeObject(networkData, Formatting.Indented);
        File.WriteAllText("networks.json", json);
    }
}